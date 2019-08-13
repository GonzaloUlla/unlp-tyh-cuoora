rendering
renderFormField: aField for: receiver thatFailsIf: aBoolean on: html
	html div
		class: 'text-fild';
		class: #error if: self yaRechazado & aBoolean;
		with: [ html span: aField capitalized.
			html textInput on: aField of: receiver ]