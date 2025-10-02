Return-Path: <linux-man+bounces-4036-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B30BB589E
	for <lists+linux-man@lfdr.de>; Fri, 03 Oct 2025 00:20:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46EF71923DC0
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 22:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0FF9272E6E;
	Thu,  2 Oct 2025 22:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDlRdfkh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCBB2652B7
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 22:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759443618; cv=none; b=dnkPsydGOG/dWr5QOZe4HkDj1KJ4uE5FP5NL3v5gVakYIdy7vhBaqLn/mn6RzFrT+N3Z9S+ie1RFTPoJO+6ZJVqIwwMtid/JlYADqCDxOz19C3WQhB9/d00Y0CWlXVkGa2AF+0RJuet/A39amoQOW/UR/097eIHdwZn4rwNz4jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759443618; c=relaxed/simple;
	bh=PX1aFCv5TeLorJSEtlMieymdHJuREDqdxWLFYILgUZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sbeKFuBd1p51VOv6lj1DWLp+Fv2jJar2xgW7xq9FBI8ZoCW572AB2aqkgv9wvwOYE0z72BUipSFNiF8ZDyCiPlCO1Hvb4hT8mc4RwDMCWI1p0pHZDAEnxWMX4Mzi9gKfNYkqfYgyUQ3PbrbiFoM9Rnjl8D4cy9Fcy/1IJMQ1rOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDlRdfkh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 269D0C4CEF4;
	Thu,  2 Oct 2025 22:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759443618;
	bh=PX1aFCv5TeLorJSEtlMieymdHJuREDqdxWLFYILgUZg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sDlRdfkh6yfo2Em01PdjAHfoApkGSwciQtrUd+lViDeOzpL0uVfL3L0XLgN9rP/kx
	 rCfUNwabdWGznYuahJekseTIHjnDJITeLJZjqXg4+9Atc8c9hGdM6tAJ8+vSeCl4a8
	 bmq9zKxU6B2Qxtm+kDF3Br0KQfVZ/ytuWF/vdlp7MmMNmpY2wBQDZO5Vvera8eHhPO
	 sSTUimcpvW7puktkn66Os+Gtqwxao43S4/UBpLQIqov9WkY0nBQc3ue4UL1RCFr5ip
	 HF9KxljJoHmNSVlpAjCM3N8RkT5zLorPSWuOgIaBRiaQe2/kCiPXsjMc+Q2KofZMNy
	 ec/Iaz/Y4g/0g==
Date: Fri, 3 Oct 2025 00:20:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Aleksa Sarai <cyphar@cyphar.com>, linux-man@vger.kernel.org, 
	groff@gnu.org
Subject: Re: [PATCH v4 07/10] man/man2/open_tree.2: document "new" mount API
Message-ID: <vcjg4cgm3gyi3j73kouas4dq3w4qiw6b5odh3q5zegit4smsap@wps3jpdixbnb>
References: <20250919-new-mount-api-v4-0-1261201ab562@cyphar.com>
 <20250919-new-mount-api-v4-7-1261201ab562@cyphar.com>
 <gyhtwwu7kgkaz5l5h46ll3voypfk74cahpfpmagbngj3va3x7c@pm3pssyst2al>
 <20250930123246.eq7alqia44wzxyw7@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cfeswbiqnnwpl56i"
Content-Disposition: inline
In-Reply-To: <20250930123246.eq7alqia44wzxyw7@illithid>


--cfeswbiqnnwpl56i
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Aleksa Sarai <cyphar@cyphar.com>, linux-man@vger.kernel.org, 
	groff@gnu.org
Subject: Re: [PATCH v4 07/10] man/man2/open_tree.2: document "new" mount API
Message-ID: <vcjg4cgm3gyi3j73kouas4dq3w4qiw6b5odh3q5zegit4smsap@wps3jpdixbnb>
References: <20250919-new-mount-api-v4-0-1261201ab562@cyphar.com>
 <20250919-new-mount-api-v4-7-1261201ab562@cyphar.com>
 <gyhtwwu7kgkaz5l5h46ll3voypfk74cahpfpmagbngj3va3x7c@pm3pssyst2al>
 <20250930123246.eq7alqia44wzxyw7@illithid>
MIME-Version: 1.0
In-Reply-To: <20250930123246.eq7alqia44wzxyw7@illithid>

Hi Branden,

[Disclaimer: this message contains a large amount of Spanish quoted text]

On Tue, Sep 30, 2025 at 07:32:46AM -0500, G. Branden Robinson wrote:
> > > +is lazy\[em]akin to calling
> >=20
> > I prefer em dashes in both sides of the parenthetical; it more clearly
> > denotes where it ends.
> >=20
> > 	is lazy
> > 	\[em]akin to calling
> > 	.BR umount2 (2)
> > 	with
> > 	.BR MOUNT_DETACH \[em];
> >=20
> > (I assume that's where it ends.)
>=20
> I'm uneasy about the acceptability of setting an em dash and semicolon
> adjacently like this.  I checked my copy of the Chicago Manual of Style
> (18th ed., 2024) and it has something close, but not squarely, on point.

I think Spanish rules are much *much* better in this regard.

<https://www.rae.es/ortograf%C3%ADa/concurrencia-con-otros-signos-4>
| 3.4.7.3. Concurrencia con otros signos
|
| Cuando las rayas que encierran incisos concurren con otros signos de
| puntuaci=C3=B3n, siguen las mismas reglas expuestas para los par=C3=A9nte=
sis
| (v. =C2=A7 3.4.5.3).
|
| Para las peculiaridades propias de los textos narrativos,
| v. =C2=A7 3.4.7.1.3.=20

It says it follows the same rules as parentheses.
If we follow =C2=A7 3.4.5.3 --rules for parentheses--, it has some gems.

<https://www.rae.es/ortograf%C3%ADa/concurrencia-con-otros-signos-2#3.4.5.3>
| 3.4.5.3. Concurrencia con otros signos
|=20
| Cuando, en su uso delimitador, los par=C3=A9ntesis concurren con otros
| signos de puntuaci=C3=B3n, deben seguirse las siguientes pautas:
|=20
|	a) Los delimitadores principales (punto, coma, punto y coma, y
|	   dos puntos) se escriben siempre despu=C3=A9s del par=C3=A9ntesis de
|	   cierre:
|=20
|		Llevaban casados mucho tiempo (el a=C3=B1o pasado cumplieron
|		sus bodas de oro), pero nunca lograron entenderse.
|=20
|		Se llama Elvira Mu=C3=B1oz (si no recuerdo mal).=20
|
[... here go some paragraphs that I'll skip, as they're unrelated to
     what we're discussing, and also I find them a bit inconsistent with
     the rest of the rules, which are quite consistent.
=2E..]
|
|	b) Si coinciden tras una palabra dos o m=C3=A1s signos dobles, se
|	   cerrar=C3=A1 primero el que se haya abierto en =C3=BAltimo lugar:
|
|		=C2=ABCreo que el motor de esos fen=C3=B3menos es la vanidad (la
|		tentaci=C3=B3n del =E2=80=9C=C2=BFpor qu=C3=A9 no yo?=E2=80=9D), que lle=
va a preferir
|		el cero al n=C3=BAmero dos=C2=BB (Abc [Esp.] 16.1.1987).=20
|
|	c) Como ya se ha se=C3=B1alado, el texto contenido dentro de los
|	   par=C3=A9ntesis tiene su propia puntuaci=C3=B3n, independiente de la
|	   del enunciado principal:
|
|		La man=C3=ADa de Ernesto por el coleccionismo (lo colecciona
|		todo: sellos, monedas, relojes, plumas, llaveros=E2=80=A6) ha
|		convertido su casa en un almac=C3=A9n.=20
|
|	   Por ello, si la secuencia escrita entre par=C3=A9ntesis es
|	   interrogativa o exclamativa, los signos de interrogaci=C3=B3n o de
|	   exclamaci=C3=B3n deben colocarse dentro de los par=C3=A9ntesis:
|
|		Su facilidad para los idiomas (=C2=A1habla con fluidez siete
|		lenguas!) le ha abierto muchas puertas.=20
|
|	   En cambio, cuando la secuencia interrogativa o exclamativa
|	   constituye una unidad mayor que la encerrada entre
|	   par=C3=A9ntesis, los signos de interrogaci=C3=B3n y exclamaci=C3=B3n se
|	   escriben fuera de los par=C3=A9ntesis:
|
|		=C2=BFCu=C3=A1ntos pa=C3=ADses integran la ONU (Organizaci=C3=B3n de las
|		Naciones Unidas)?
|
|	   Lo mismo cabe decir de los puntos suspensivos, que preceden
|	   al par=C3=A9ntesis de cierre si corresponden solo al segundo
|	   discurso, mientras que se escriben tras el par=C3=A9ntesis si
|	   afectan al discurso principal:
|
|		Cont=C3=A9 lentamente (uno, dos, tres=E2=80=A6) y me di la vuelta.
|
|		Visitamos el museo de la ciudad, las calles del centro
|		hist=C3=B3rico, las monta=C3=B1as cercanas (=C2=A1impresionantes!)=E2=80=
=A6
|		Acabamos agotados.=20

And then if we read the description of "la raya", it has some nice
examples of use:

<https://www.rae.es/ortograf%C3%ADa/la-raya-como-signo-delimitador#3.4.7.1>
| 3.4.7.1. La raya como signo delimitador
|=20
| Cuando es un signo doble, la raya forma parte del grupo de signos
| delimitadores que introducen o encierran un segundo discurso.  Su
| funci=C3=B3n principal es indicar que las unidades ling=C3=BC=C3=ADsticas=
 que a=C3=ADsla
| no son una parte central del mensaje, sino que constituyen un discurso
| secundario que se inserta en el discurso principal para introducir
| informaci=C3=B3n complementaria:
|
|	=C2=ABEl segundo festival de m=C3=BAsica mexicana es =E2=80=94=C2=A1c=C3=
=B3mo ponerlo en
|	duda!=E2=80=94 el acontecimiento musical m=C3=A1s importante del a=C3=B1o=
=C2=BB (Melo
|	Notas [M=C3=A9x. 1990]).
|
|	=C2=ABNo daba importancia a los viajes de su mujer.  =E2=80=9CQue se
|	distraiga =E2=80=94dec=C3=ADa=E2=80=94, que se distraiga=E2=80=9D=C2=BB (=
Palou Carne [Esp. 1975]).=20
|
| Como discurso aut=C3=B3nomo con respecto al principal, las secuencias
| encerradas entre rayas pueden tener puntuaci=C3=B3n propia:
|
|	=C2=ABAguzando el o=C3=ADdo =E2=80=94en el fondo, sin necesidad de concen=
trarse mucho:
|	bastaba con dejar de prestar atenci=C3=B3n a los latidos del propio
|	coraz=C3=B3n, con sosegarse=E2=80=94, era f=C3=A1cil percibir un rumor de=
 voces=C2=BB
|	(Azancot Amores [Esp. 1980]).=20
|
| En su funci=C3=B3n delimitadora de un segundo discurso, las rayas tienen
| los usos que se comentan a continuaci=C3=B3n.
|
| 3.4.7.1.1 En incisos
|=20
| Las rayas se emplean, como signo doble, para encerrar incisos:
|=20
|	Para =C3=A9l la fidelidad =E2=80=94cualidad que valoraba por encima de
|	cualquier otra=E2=80=94 era algo sagrado.
|=20
| En este uso pueden utilizarse tambi=C3=A9n las comas o los par=C3=A9ntesi=
s.  Los
| incisos entre rayas suponen un aislamiento mayor con respecto al texto
| en el que se insertan que los que se escriben entre comas, pero menor
| que los que se escriben entre par=C3=A9ntesis (sobre otras diferencias
| entre el uso del par=C3=A9ntesis o la raya, frente a la coma, para
| delimitar incisos, v. =C2=A7 3.4.5.1.1).  La raya de cierre en los incisos
| no se suprime aunque detr=C3=A1s de ella deba aparecer un punto o cualqui=
er
| otro signo de puntuaci=C3=B3n:
|=20
|	Esperaba a Emilio =E2=80=94un gran amigo=E2=80=94.  Lamentablemente, no v=
ino.
|=20
|	Esperaba a Emilio =E2=80=94un gran amigo=E2=80=94, que, lamentablemente, =
no vino.=20
|
| Tampoco debe suprimirse la raya de cierre cuando el inciso ocupa la
| posici=C3=B3n final del enunciado:
|=20
|	La editorial ha publicado este a=C3=B1o varias obras del autor =E2=80=94t=
odas
|	ellas de su primera =C3=A9poca=E2=80=94.
|=20
| Deben evitarse puntuaciones redundantes, como la del siguiente
| ejemplo, donde debieron escribirse o comas o rayas, pero no ambos
| signos: =E2=8A=97 =C2=ABLa muerte vivida por los dem=C3=A1s, =E2=80=94sea=
 la muerte por
| accidente o de otros modos=E2=80=94, es una cosa que sufrimos mucho=C2=BB=
 (Burgos
| Rigoberta [Guat. 1983]).=20
|
| 3.4.7.1.2 En incisos incluidos en otros incisos
|=20
| Deben usarse las rayas para introducir una nueva aclaraci=C3=B3n o inciso
| en un texto ya encerrado entre par=C3=A9ntesis:
|=20
|	Si desea m=C3=A1s informaci=C3=B3n sobre este tema (la bibliograf=C3=ADa
|	existente =E2=80=94incluso en espa=C3=B1ol=E2=80=94 es bastante extensa),=
 deber=C3=A1
|	acudir a otras fuentes.
|=20
| Para intercalar alg=C3=BAn dato o precisi=C3=B3n en un inciso escrito ent=
re
| rayas, han de usarse los par=C3=A9ntesis (v. =C2=A7 3.4.5.1.2): Venezuela
| =E2=80=94primer lugar de tierra firme avistado por Col=C3=B3n en su terce=
r viaje a
| Am=C3=A9rica (1498)=E2=80=94 ten=C3=ADa, por aquel entonces, unos 300 000=
 habitantes.=20
|
| 3.4.7.1.3 Para enmarcar comentarios de un narrador o transcriptor
|
| Las rayas se usan para enmarcar, en medio de una cita textual
| entrecomillada, las aclaraciones del transcriptor con respecto a su
| autor=C3=ADa:
|
|	=C2=ABEs imprescindible =E2=80=94se=C3=B1al=C3=B3 el ministro=E2=80=94 qu=
e se refuercen los
|	sistemas de control sanitario en las fronteras=C2=BB.
|=20
| Se usa, en cambio, la coma cuando la aclaraci=C3=B3n aparece en posici=C3=
=B3n
| final, fuera del texto entrecomillado:
|=20
|	=C2=ABEs imprescindible que se refuercen los sistemas de control
|	sanitario en las fronteras=C2=BB, se=C3=B1al=C3=B3 el ministro.=20
|
[...]

I plan to eventually go through all the pages and make sure em dashes
follow these rules.

>=20
> ---snip---
> =C2=A76.95.  Em dashes and other punctuation.  In modern usage, a question
> mark or an exclamation point=E2=80=94but never a comma, a colon, or a sem=
icolon=E2=80=94
> may precede an em dash.  ... If the context calls for an em dash where a
> comma would ordinarily separate a dependent clause from an independent
> clause, the comma is omitted.
> ---end snip---

I think the Spanish rules for the em dash result in more logic text,
which is easier to parse.  I'm going to ignore this style, even if it's
the more common one in English texts.

>=20
> Here's the full sentence at issue.
>=20
> >>> +(Note that the unmount operation on
> >>> +.BR close (2)
> >>> +is lazy\[em]akin to calling
> >>> +.BR umount2 (2)
> >>> +with
> >>> +.BR MOUNT_DETACH ;
> >>> +any existing open references to files
> >>> +from the mount object
> >>> +will continue to work,
> >>> +and the mount object will only be completely destroyed
> >>> +once it ceases to be busy.)
>=20
> This construction uses a semicolon rather than a comma, and that
> semicolon separates two independent clauses.  (Whether "Note that" is
> retained or deleted makes no difference.)
>=20
> CMoS therefore doesn't flag this as "wrong", but I think it'll look
> weird to a native English reader and maybe to non-native ones, too.
>=20
> The best solution might be to recast.  It's seldom wrong to break a
> sentence using a semicolon into two sentences when the purpose of the
> prose is to explain rather than specify.
>=20
> > You need to escape dashes in manual pages.  Otherwise, they're
> > formatted as hyphens,
>=20
> s/they're/they can be/
>=20
> Some distributions, like Arch[1], Debian[2], and Fedora[3], won't
> exhibit this problem.  Why doesn't groff do this upstream?  Because some
> groff users _do_ care about correct typesetting, and it's more
> straightforward for distributors to patch their packages as the
> aforementioned have done than for groff to adopt that as a default and
> leave people to their own devices to revert it.[4]
>=20
> (Maybe I should copy some of that rationale into groff's "PROBLEMS"
> file.  Opinions?)
>=20
> > which can't be pasted into the terminal (and another consequence is
> > not being able to search for them in the man(1) reader with literal
> > dashes).
>=20
> ...but if you're looking for an incorrectly hyphenated term like
> "foo-bar", you _can_ search for "foo.bar".  Both the more(1) and less(1)
> in the (now over 2 years old) Debian Bookworm can manage this on
> UTF-8-encoded input.

Except that if "foo bar" appears frequently in the text, using foo.bar
will be painful (has happened to me).  But at least it's better than
not being able to search it at all.  :)

>=20
> > Depending on your system, you might be able to search for them or paste
> > them to the terminal, because some distros patch this in
> > /etc/local/an.tmac,
>=20
> That's not the file name any of the foregoing distributors use, but
> you've got the right idea.

Oops, I meant to say */groff/*, not */local/*.  'local' was hot in
cache in my brain for some reason, and overwrote some register.

> > at the expense of generating lower quality pages, but in general don't
> > rely on that.
> >=20
> > I've noticed now, but this probably also happens in previous pages in
> > this patch set.
> >=20
> > While at it, you should also use a non-breaking space, to keep the
> > entire command in the same line.
> >=20
> > 	.IR \%mount\~\-\-bind )
>=20
> Here's where I disagree a little.  Lengthy unhyphenable character
> sequences like this can lead to ugly formatting, even when adjustment is
> disabled.  (A ragged right margin can get _really_ ragged.)

I see what you mean, but I wouldn't count this as lengthy.

> While I personally would not use italics for inline examples (and don't
> in groff man pages), regardless of the font style you use, you can
> surround multi-word inline examples with quotation marks so that they
> are properly understood even if broken.  (Further, no font style
> selection survives copy-and-paste into plain text email.)
>=20
> The Linux man-pages don't require portability to AT&T troff, so you can
> achieve this with groff's `lq` and `rq` special characters.
>=20
> I therefore propose:
>=20
> .RI \[lq] \%mount
> .IR \-\-bind \[rq]

I would still make it unbreakable.  It's short enough that it's more
readable in the same line.  And if it were long enough, I'd make it an
EX/EE example.

The portability of \[lq] and \[rq] is fine; I'm already relying on
groffisms.  :)

[...]

> Quotation is a useful and important linguistic facility.  It's a shame
> man page authors have neglected it so long.

I might switch to it, eventually.  I'd consider using both I and quotes,
maybe.  We'll see.  As a colleague I had at nginx says, the term is
"eventually".  ;-)

> Regards,
> Branden

Have a lovely night!
Alex

>=20
> [1] https://gitlab.archlinux.org/archlinux/packaging/packages/groff/-/com=
mit/e474b541a32fc905b4f748de0313acfb8b98c081
> [2] https://salsa.debian.org/debian/groff/-/commit/d5394c68d70e6c5199b01d=
2522e094c8fd52e64e
> [3] https://bodhi.fedoraproject.org/updates/FEDORA-2023-f5d1e63191
> [4] https://lwn.net/Articles/948616/



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--cfeswbiqnnwpl56i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmje+pEACgkQ64mZXMKQ
wqm1Tw/+LVtN7SoIQ2yMvLKHq2Ipx2bGhAVglOqtuqzE/kQSnfD2d3qK0fyxhAg6
KDkgvoltC8K2zVhCw+i3k//VkZ6FTEnokB1Pk9NXOVcpm83choSKVEPhrhyK+0vX
3TTtLYuWvc7lKCOLyPIHzMVuGFje1+CqQIWBUEetlXBeFYjMffkGYojk2e4Gm0Yy
r6epJ90sYf+p9OFf0XsagRc5/DEjaZaPMzL+HrOiML3ntNjJv+YbMM/yI/DuMunc
3JZ19IREmxc/spsft7U8YqT26MrFOV5e4Zqs5BHqezO5RE3KTRjX0FAksU7Bh6Yd
AVTeY31EYK8i9Be+iIZ5aMoIDTxrWBjCQZ8NSToqXkMFy2FtIOLGIH+4hRPqmxDD
Dhz5msKjFQDoepFWMPzZF0uBej9+LGosNl6lJWDkuXdQuznad/o/oZWwiM7vsd5n
8RIBaDuBycB82iD6ShWpT+DPeAk8L94a9FicfFSuQP7XE9+eZDQ1VkCnMDvgL4fu
ChmWW2nN4fCJlVv3hOSFVCPwJnYLbT6wcETfxk9porqqobh3fuFHE44STvJJF71D
iT6iiwoDHaBQiFtjJU9ukXK5TFW8A+5CM84hrXKmvKMX7d3abkHr0NT8L7nTKsJv
0Bk+oKj38fDnFxEcLX+BohlozFG57KMlypknIpRtzsx1qpKeMms=
=Rqdm
-----END PGP SIGNATURE-----

--cfeswbiqnnwpl56i--

