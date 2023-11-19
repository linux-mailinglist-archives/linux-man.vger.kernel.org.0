Return-Path: <linux-man+bounces-105-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE237F08F5
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 21:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E479280CED
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 20:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B08E11CA6;
	Sun, 19 Nov 2023 20:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv7Ofb0r"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D436DF4B
	for <linux-man@vger.kernel.org>; Sun, 19 Nov 2023 20:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D303C433C7;
	Sun, 19 Nov 2023 20:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700427300;
	bh=q0eglp9dSiD9aejz6PB+lCxa4oED7aRsG3V9av/HWqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sv7Ofb0rc/yq+nobxQgaSHz4DbMzIcFV7BGA2JcfyuM16t0UQdy7BgquxRgENy7Mz
	 MCH/X2TLBmg/7UqO3QQcYOi1KlvVphwkyJdQejY77tyw/6aEecljdTQAlS/8JkbEA9
	 9Du++WiGSV6Uitwuh06sxVJ6PY3ayspmYjNYkO62uzn+K6BrDodpumJc5Dmxu0tpPj
	 wtEbOfqPk0aBibF2MAV63kamoOzs9WFKFOTjLUwIPq3cMWosMAXtS92UU3/bbf1iGe
	 bhTxON2fXpnmYzr7QoVz8legjZtCvPr86lq1h+v91W8PXw/Qq784BYT4yseCvNdjTI
	 zoRRddR8u7R5w==
Date: Sun, 19 Nov 2023 21:58:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)
Message-ID: <ZVp24b1vXfoS8ABi@devuan>
References: <ZUo6btEFD_z_3NcF@devuan>
 <4567510.7DdL66CAHx@pip>
 <ZVlitX4dWaC2m-2S@devuan>
 <12344046.3XHVMEB1Be@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lBaDmkFbLk/X5oJC"
Content-Disposition: inline
In-Reply-To: <12344046.3XHVMEB1Be@pip>


--lBaDmkFbLk/X5oJC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 19 Nov 2023 21:58:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)

On Sun, Nov 19, 2023 at 04:21:45PM +0000, Deri wrote:
> > 	$ touch man2/membarrier.2
> > 	$ make build-pdf
> > 	PRECONV	.tmp/man/man2/membarrier.2.tbl
> > 	TBL	.tmp/man/man2/membarrier.2.eqn
> > 	EQN	.tmp/man/man2/membarrier.2.pdf.troff
> > 	TROFF	.tmp/man/man2/membarrier.2.pdf.set
> > 	GROPDF	.tmp/man/man2/membarrier.2.pdf
> >=20
> > That helps debug the pipeline, and also learn about it.
> >=20
> > If that helps parallelize some tasks, then that'll be welcome.
>=20
> Hi Alex,

Hi Deri,

> Doing it that way actually stops the jobs being run in parallel! Each ste=
p=20

Hmm, kind of makes sense.

> completes before the next step starts, whereas if you let groff build the=
=20
> pipeline all the processes are run in parallel. Using separate steps may =
be=20
> desirable for "understanding every little step of the groff pipeline", (a=
nd=20

Still a useful thing for our build system.

> may aid debugging an issue), but once such knowledge is obtained it is=20
> probably better to leave the pipelining to groff, in a production environ=
ment.

Unless performance is really a problem, I prefer the understanding and
debugging aid.  It'll help not only me, but others who see the project
and would like to learn how all this magic works.

> > > The time saved would be absolutely minimal. It is obvious that to pro=
duce
> > > a
> > > pdf containing all the man pages then all the man pages have to be
> > > consumed by groff, not just the page which has changed.
> >=20
> > But do you need to run the entire pipeline, or can you reuse most of it?
> > I can process in parallel much faster, with `make -jN ...`.  I guess
> > the .pdf.troff files can be reused; maybe even the .pdf.set ones?
> >=20
> > Could you change the script at least to produce intermediary files as in
> > the pipeline shown above?  As many as possible would be excellent.
>=20
> Perhaps it would help if I explain the stages of my script. First a look =
at=20
> what the script needs to do to produce a pdf of all man pages. There are =
too=20
> many files to produce a single command line with all the filenames of eac=
h=20
> man, groff has no mechanism for passing a list of filenames, so first job=
 is=20

You can always `find ... | xargs cat | troff /dev/stdin`

> to concatenate all the separate files into one input file for groff. And =
while=20
> we are doing that, add the "magic sauce" which makes all the pdf links in=
 the=20
> book and sorts out the aliases which point to another man page.

Yep, I think I partially understood that part of the script today.  It's
what this `... | LC_ALL=3DC grep '^\\. *ds' |` pipeline produces and
passes to groff, right?

> After this is done there is a single troff file, called LMB.man, which is=
 the=20

That's what's currently called LinuxManBook.Z, right?

> file groff is going to process. In the script you should see something li=
ke=20
> this:-
>=20
> my $temp=3D'LMB.man';

I don't.  Maybe you have a slightly different version of it?

> [...]
>=20
> my $format=3D'pdf';
> my $paper=3D$fpaper ||';
> my $cmdstring=3D"-T$format -k -pet -M. -F. -mandoc -manmark -dpaper=3D$pa=
per -P-
> p$paper -rC1 -rCHECKSTYLE=3D3";
> my $front=3D'LMBfront.t';
> my $frontdit=3D'LMBfront.set';
> my $mandit=3D'LinuxManBook.set';
> my $book=3D"LinuxManBook.$format";
>=20
> system("groff -T$format -dpaper=3D$paper -P-p$paper -ms $front -Z > $fron=
tdit");

This creates the front page .set file

> system("groff -z -dPDF.EXPORT=3D1 -dLABEL.REFS=3D1 $temp $cmdstring 2>&1 =
|=20
> LC_ALL=3DC grep '^\\. *ds' |

This creates the bookmarks, right?

> groff -T$format $cmdstring - $temp -Z > $mandit");

And this is the main .set file.

> system("./gro$format -F.:/usr/share/groff/current/font $frontdit $mandit -
> p$paper  > $book");

And finally we have the book.

>=20
> (This includes changes by Brian Inglish ts). If you remove the lines whic=
h=20
> call system you will end up with just the single file LMB.man (in about a=
=20
> quarter of a second). You can treat this file just the same as your singl=
e=20
> page example if you want to.
>=20
> The first system call creates the title page from the troff source file=
=20
> LMBfront.t and produces LMBfront.set, this can be added to your makefile =
as an=20
> entirely separate rule depending on whether the .set file needs to be bui=
lt.
>=20
> The second and third system calls are the calls to groff which could be p=
ut=20
> into your makefile or split into separate stages to avoid parallelism.
>=20
> The second system call produces LinuxManBook.set and the third system com=
bines=20
> this with LMBfront.set to produce the pdf.
>=20
> The "./" in the third system call is because I gave you a pre-release gro=
pdf,=20
> you may be using the released 1.23.0 gropdf now.
>=20
> > > On my system this takes about 18
> > > seconds to produce the 2800+ pages of the book. Of this, a quarter of=
 a
> > > second is consumed by the "magic" part of the script, the rest of the=
 18
> > > seconds is consumed by calls to groff and gropdf.
> >=20
> > But how much of that work needs to be on a single process?  I bought a
> > new CPU with 24 cores.  Gotta use them all  :D
>=20
> I realise you are having difficulty in letting go of your idea of re-usin=
g=20
> previous work, rather than starting afresh each time. Imagine a single wo=
rd=20
> change in one man page causes it to grow from 2 pages to 3, so all links =
to=20
> pages after this changed entry would be one page adrift. This is why very=
=20
> little previous work is useful, and why the whole book has to be dealt wi=
th as=20
> a single process.

Does such a change need re-running troff(1)?  Or is gropdf(1) enough?  If
troff(1)

My problem is probably that I don't know what's done by `gropdf`, and
what's done by `troff -Tpdf`.  I was hoping that `troff -Tpdf` still
didn't need to know about the entire book, and that only gropdf(1) would
need that.

> If each entry was processed separately, as you would like to=20
> use all your shiny new cores, how would the process dealing with accept(2=
)=20
> know which page socket(2) would be on when it adds it as a link in the te=
xt. I=20
> hope you can see that at some point it has to be treated as a homogenous =
whole=20
> in order calculate correct links between entries.
>=20
> > > So any splitting of the perl script is
> > > only going to have an effect on the quarter of a second!
> > >=20
> > > I don't understand why the perl script can't be included in your make=
 file
> > > as part of build-pdf target.
> >=20
> > It can.  I just prefer to be strict about the Makefile having "one rule
> > per each file", while currently the script generates 4 files (T, two
> > .Z's, and the .pdf).
>=20
> Explained how to separate above so that the script only generates LMB.man=
 and=20
> the system calls moved to the makefile.

Thanks!

> > > Presumably it would be dependent on running after
> > > the scripts which add the revision label and date to each man page.
> >=20
> > I only set the revision and date on dist tarballs.  For the git HEAD
> > book, I'd keep the (unreleased) version and (date).  So, no worries
> > there.
>=20
> Given that you seem to intend to offer these interim books as a download,=
 it=20
> would make sense if they included either a date or git commit ID to=20
> differenciate them, if someone queries something it would be useful to kn=
ow=20
> exactly what they were looking at.

The books for releases are available at

<https://www.alejandro-colomar.es/share/dist/man-pages/6/6.05/6.05.01/man-p=
ages-6.05.01.pdf>

(replace the version numbers for other versions, or navigate the dirs)
I need to document that in the README of the project.

For git HEAD, I plan to have something like

<https://www.alejandro-colomar.es/share/dist/man-pages/git/man-pages-HEAD.p=
df>

It's mainly intended for easily checking what git HEAD looks like, and
discard that later.  If the audience asks for version numbers, though,
I could create provide `git --describe` versions and dates in the pages.

> Cheers=20
>=20
> Deri
>=20
> > > > Since I don't understand Perl, and don't know much of gropdf(1) eit=
her,
> > > > I need help.
> > > >=20
> > > > Maybe Deri or Branden can help with that.  If anyone else understan=
ds it
> > > > and can also help, that's very welcome too!
> > >=20
> > > You are probably better placed to add the necessaries to your makefil=
e.
> > > You
> > > would then just need to remember to make build-pdf any time you alter=
 one
> > > of the source man pages. Since you are manually running my script to
> > > produce the pdf, it should not be difficult to automate it in a makef=
ile.
> > >=20
> > > > Then I could install a hook in my server that runs
> > > >=20
> > > > 	$ make build-pdf docdir=3D/srv/www/...
> > >=20
> > > And wait 18s each time the hook is actioned!! Or, set the build to pl=
ace
> > > the generated pdf somewhere in /srv/www/... and include the build in =
your
> > > normal workflow when a man page is changed.
> >=20
> > Hmm.  I still hope some of it can be parallelized, but 18s could be
> > reasonable, if the server does that in the background after pushing.
> > My old raspberry pi would burn, but the new computer should handle that
> > just fine.
>=20
> I'm confused. The 18s is how long it takes to generate the book, so if th=
e=20
> book is built in response to an access to a particular url the http serve=
r=20
> can't start "pushing" for the 18s, then addon the transfer time for the p=
df=20
> and I suspect you will have a lot of aborted transfers. Additionally, the=
=20
> script, and any makefile equivalent you write, is not designed for concur=
rent=20
> invocation, so if two people visit the same url within the 18 second wind=
ow=20
> neither user will receive a valid pdf.

No, my intention is that whenever I `git push` via SSH, the receiving
server runs `make build-book-pdf` after receiving the changes.  That is
run after the git SSH connection has closed, so I wouldn't notice.

HTTP connections wouldn't trigger anything in my server, except Nginx
serving the file, of course.

> I advise the build becomes part of your workflow after making changes, an=
d=20
> then place the pdf in a location where it can be served by the http serve=
r.
>=20
> Your model of slicing and dicing man pages to be processed individually i=
s=20
> doable using a website to serve the individual pages, see:-
>=20
> http://chuzzlewit.co.uk/WebManPDF.pl/man:/2/accept
>=20
> This is running on a 1" cube no more powerful than a raspberry pi 3. The=
=20
> difference is that the "magic sauce" added to each man page sets the link=
s to=20
> external http calls back to itself to produce another man page, rather th=
an=20
> internal links to another part of the pdf. You can get an index of all th=
e man=20
> pages, on the (very old) system, here.
>=20
> http://chuzzlewit.co.uk/

Yep, I've seen that server :)
Long term I also intend to provide one-page PDFs and HTML files of the
pages.  Although I prefer pre-generating them, instead of on-demand.
Maybe a git hook, or maybe a cron job that re-generates them once a day
or so.

Cheers,
Alex

>=20
> Cheers=20
>=20
> Deri

--=20
<https://www.alejandro-colomar.es/>

--lBaDmkFbLk/X5oJC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVadtsACgkQnowa+77/
2zJRPA//VRtZV5DZATwSy7dTHQ3a6ddqeMuOeVHUC8pMPG9riblrTFKnhPtuKzQq
H8qVid/hDGrED147h5Y1FjMdee62zT8CrwmMl0oxdR2e0Ald3K3I4i5RrAKAub3e
B/k+3enVvSL3SY0uNuXCEPwQaMP6zslMoKRrCtWHasaZpkdU/7QZLbgPsvF2cRFS
hp/Qiiu5JJeuL+3MJQVIJxJub59GuhGqOT83qXa1Wb4GEqsSDFcysiuUVwziNgL7
yTOYdbp6WX6cg2Qx5vJMb4/AG5+LQ7gZeP0V5lWXvuZu41jwEsYCLQUqLgq9nRTE
IFfV46rA3TKn1YIBXdp4rd4+zqTk26sAyRavVnSkGiGbHJrGR8Jrg1yDGqJLOiRp
QS/Q7btM4fCy9wg2g/q27bpNy2Gd5lNPml/rcJhZs0hR2B4XpTXuYRtklMp1O4Q2
pJ0SJdn3408+vU4KNvI7JMSASYZIZI4laEBWUb3SGCG++P5fLvWCnQWqzCmAR+gq
S1WMpZeQhoAAhPx4CnuUnks0ridFzpjQ6Q+6Z4GrWHYgKsjw9C8xGdE5eCrIfzih
D9C5+YNFDMerNHhCwACS+NsPGkICVQgWGfuFOK6RgWusN4oJkhA79nXvMTG9/fbb
BK6FZmmVd/p1+XIdzbVb4Px18Xy/BHF5GwoFj+wnEfoRrHX+n2g=
=fqqb
-----END PGP SIGNATURE-----

--lBaDmkFbLk/X5oJC--

