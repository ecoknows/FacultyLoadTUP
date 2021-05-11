from wagtail.core import blocks
from django import forms


class SubjectBlock(blocks.StructBlock):
    _main = blocks.BooleanBlock(default=False)
    description = blocks.TextBlock(max_length=250)

    subject_type = blocks.ChoiceBlock(max_length=250, default='lecture', choices=[
        ('lecture', 'Lecture'), ('laboratory', 'Laboratory')
    ], widget=forms.RadioSelect)
    units = blocks.IntegerBlock(default=0)

    section = blocks.TextBlock(max_length=250)
    schedule = blocks.TextBlock(max_length=250)

    _type = blocks.ChoiceBlock(max_length=250, default='regular', choices=[
        ('regular', 'Regular'), ('part-timer', 'Part Timer')
    ], widget=forms.RadioSelect)

    class Meta:

        template = 'streams/subject_block.html'
        icon = 'form'
