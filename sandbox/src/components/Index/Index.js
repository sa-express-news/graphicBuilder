import data from '../../../data.json';

export default {
    name: 'app',
    title: function () { 
        return data && data.META && data.META.graphic_title ? data.META.graphic_title : 'Graphic'
    },
    data: function () { return data },
}