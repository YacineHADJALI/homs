modulejs.define 'HBWFormFileList', ['React', 'HBWDeleteIfMixin'], (React, DeleteIfMixin) ->
  React.createClass
    mixins: [DeleteIfMixin]

    render: ->
      cssClass = @props.params.css_class
      cssClass += ' hidden' if this.hidden
      label    = @props.params.label
      labelCSS = 'hbw-checkbox-label ' + (@props.params.label_css or '')
      links    = @props.value

      `<div className={cssClass}>
        <label className={labelCSS}>
          <span>{' ' + label}</span>
          {this.files(links)}
        </label>
      </div>`

    files: (list) ->
      if (list)
        list.map (variant) ->
          `<a href={variant.link}>{variant.name}</a>`
