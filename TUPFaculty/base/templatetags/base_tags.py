from django import template
from TUPFaculty import DAY
register = template.Library()

@register.filter(name='to_year_text')
def to_year_text(value):
    year = [
        'First Year',
        'Second Year',
        'Third Year',
        'Fourth Year',
    ]   
    return year[value-1]



@register.inclusion_tag('facultyload/includes/identify_schedule.html', takes_context=True)
def identify_schedule(context,starting_time,ending_time):
    self = context.get('self')

    filtered_day = context['datas'].filter(schedule__ending_time__gte=ending_time)

    time_array_checker = [None] * len(DAY)

    for idx, time_checker in enumerate(time_array_checker):
        for day in filtered_day:
            if DAY[idx][0] == day.schedule.day:
                if day.schedule.start_time <= starting_time:
                    center_time = int(((day.schedule.ending_time - day.schedule.start_time) / 2) + day.schedule.start_time)
                    if ((day.schedule.ending_time - day.schedule.start_time) % 2) == 0:
                        center_time = center_time - 1
                    if center_time is starting_time:
                        time_array_checker[idx] = day
                    else:
                        time_array_checker[idx] = { 'day' : day, 'stat': 'Not Centered'}
                
    return {
        'time_array_checker' : time_array_checker,
        'request': context['request'],
    }
