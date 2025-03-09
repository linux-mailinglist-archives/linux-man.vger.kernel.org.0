Return-Path: <linux-man+bounces-2588-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E08BA585B0
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 17:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F3FD16AF2A
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 16:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9919B1C1ADB;
	Sun,  9 Mar 2025 16:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b3rbwhe4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88EFC186A
	for <linux-man@vger.kernel.org>; Sun,  9 Mar 2025 16:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741536171; cv=none; b=cG6gT/Pn+xiecSTsWp4vDrARnnQp7b99aj3RVNv3GqQAfgREO9Tv2sPB4vw7oCYXPAx5yfpByioa9IHT6wspSkybUwOdFwpsBlMv95S3JXLazFHZ2/QQTRSKQK5K1UX4MInHeob+xCpXCYawqhz3rUhoM+f/p0y4gdm8IOvRHuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741536171; c=relaxed/simple;
	bh=hOfTWqlS8NAZwVYJBVyWH4zqtVvIbDhg6c6ay8RnPYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QvxcN/y7XomcNYv6XVL3lrt4f6/sXZEkSCJwBQ7jjyOk1Hxh/coJGEcmFv045JEW/aPT1/RJBPsxsSwo+bV5n2jSBt0wlQB2jOwymkako0S/aOdJf4B2Rzl/e/1iivhfwRkAyXvbc/96B8SW73ART44bT0b2u42NQBsuszzRpYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b3rbwhe4; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-60047980fffso488492eaf.2
        for <linux-man@vger.kernel.org>; Sun, 09 Mar 2025 09:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741536167; x=1742140967; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/wDIq/GEwhqe/ochpRPFKwSq0n/dRhYok/vi9wiH/UI=;
        b=b3rbwhe4BE7XevhYtt4PmGgM+FSIaSDbp5hWb6IKOrTHgnM2BDvhAvczen8EwrnCG7
         wkeYEpmU0VMtNs7H1X2zARmFMQy3QfJ27popb4pHq/nU2xvhoXtUGUTPv5Wfg6y3lomz
         VPa237/0Mym7ot6oGKlPYCwpLVtEsS3ZQuHfQ9xja3yLcuhOyA9uKp3vPl8FfMs15APU
         LSVs+HlzJ8pxyRBCvkhiyRZWwk8hq329Py36q0kZdXVdWvwPK2q1DpIGsQV822YtHJ9z
         Du4NEAHVOVpN6MHJsW9AeRKOgrrBqu8YnPB+Ojv+YoSO2UyxvA9nfF1I6AzVNugzUzFJ
         d1qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741536167; x=1742140967;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/wDIq/GEwhqe/ochpRPFKwSq0n/dRhYok/vi9wiH/UI=;
        b=S7nKsoABX0RHvf4ToYCwUrB6YR3fzwCEZ6KpCtp2GrcbGfUR3UXYCyxjUqo4GoNq6K
         oO0FW3ImM8+/pCpF/8e/bd/XYdv22wMdQgS5YXF+VTkKC/U39sxIPPuUruY2YLeZwPJK
         q9fs9EbBqtcTuK5AhzyixSO5zjPBGe7sjt5jNVt+RcGgltc/ZPj0wR3E8Jhl2QTqovoV
         tsGCJnMQk+IOpFSe/UEkG6tO4WsWpNOEPLNdsir69s29w4jw5S7t3ehCJWC3kiOpXNZJ
         cDHPfIKyMgJ3SGeqmJ+pLvtwdJzKkYiA2IGT6ZqIWQfAdlhanhwWJcmaKAZLTWWH+rMb
         /N+A==
X-Gm-Message-State: AOJu0YzIox4x+qdr8KRrckjhF3BN+DnsPjFZmFKDTe48avfLZwVxwEIV
	jI4PHUfLCv3ipYu4J6TyQKs8UB+okLA4rUhJVW2wg28fe+2rwdVsRfGykw==
X-Gm-Gg: ASbGncutAGlbFa3UKSS9QgJrHRgzkYvcXQCV0SDXSHj9MqW5Lcer1Z2DHWzz6cE1Sqc
	6u/NgnRR2quOQhWVIr/BRURY3sd5ZRacIC3XWipyR2lUzMAOQUQDrM3sgguGoq4Vh8cQ4NkE8fq
	WdFnmvf+sxpc/dbj2EDitr4bwDCS4PKaOtDi41dNgjVxaSX1Qn0JLkm55mgGx1CCWy0Ie7VZf59
	hB1fbbKDl5FtBcAOi5jH8opfdPPkxmz5mjfP5NOFQkiBfOByeO196s6TdcO74fVguNL0DT3FTFv
	ammKprPFoRD4u25PVPyTjdknnKTneuIStgs=
X-Google-Smtp-Source: AGHT+IFu/7mW0LEpYro8+m9vMz2qme3obKeyeeN0tmjYQNPtxYvn6g6vDLWaWESZxro+Vq1vZWUEBA==
X-Received: by 2002:a05:6870:7b4d:b0:288:c045:6e4e with SMTP id 586e51a60fabf-2c261071e3dmr5651071fac.14.1741536167121;
        Sun, 09 Mar 2025 09:02:47 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c2488ba989sm1821981fac.15.2025.03.09.09.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Mar 2025 09:02:45 -0700 (PDT)
Date: Sun, 9 Mar 2025 11:02:42 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: groff status report (was: man-pages-6.13 released)
Message-ID: <20250309160242.tkzhihdgdspsmdxk@illithid>
References: <ft2zbwghk6hbnhlawjigckegrk3yekyeiudp43gafoububm5ma@mbkqcvh4idyf>
 <7911697.yEr3mM9iWp@pip>
 <ccadtuzssuamek537trppkkustbxn6vxhwcvd6tlzsqkkhfcvt@irm3bx5k5z53>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ktn25nz5nhuht45x"
Content-Disposition: inline
In-Reply-To: <ccadtuzssuamek537trppkkustbxn6vxhwcvd6tlzsqkkhfcvt@irm3bx5k5z53>


--ktn25nz5nhuht45x
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="5rwcfitxr6sd7xdh"
Content-Disposition: inline
Subject: groff status report (was: man-pages-6.13 released)
MIME-Version: 1.0


--5rwcfitxr6sd7xdh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[looping in groff@gnu since this turned into a status report]

At 2025-03-09T15:49:10+0100, Alejandro Colomar wrote:
> On Sun, Mar 09, 2025 at 01:12:40PM +0000, Deri wrote:
> > I'm wondering why you switched from using a more "up to date" groff
> > back to the 1.23.0 version.
>=20
> I bought a new drive for my computer, and reinstalled the OS.  That
> was when.  :)
>=20
> I haven't built groff from source since then yet.
[...]
> > Just wondering if you found a problem with the current git version
> > which meant you had to revert?
>=20
> Nah, just fresh OS install.  I will eventually build it again from
> source.  I was hoping that groff might release soonish and I wouldn't
> have to do it, but I think it will not happen any soon.

Not reckoned with respect to the speed you work at, I don't think.  :-O

I pushed a batch of changes yesterday, but they mostly didn't reveal
where most of my development time has been going lately.  This requires
a story.

On 16 January, Dave Kemper filed Savannah #66675.[1]

That ticket pointed out a problem with one of the elements of a major
refactor to solve a significant site of the "node getting into
device-independent output" problem, which is challenging to explain
under the best of circumstances.  Suffice to say, it was the origin of
some of the most mysterious and frustrating diagnostic messages that
groff throws.  Mystified users are unhappy users.  The NEWS file for the
forthcoming release represents my best effort to explain.[2]  Feedback
welcome.

Digging into Dave's problem revealed that my refactoring had undesired
consequences on character definitions.  (That is, use of `char` and
similar requests to construct user-defined characters.  For one thing,
it appears that "removing" characters may have never really worked,
because the act of looking one up created it.  But it's hard to know
what really goes on with character name resolution because historically
there is no way outside of source-level debugging to introspect either
the resolution process or the character objects themselves.)

Further study revealed that writing experiments, let alone automated
tests, to determine whether I'd screwed up or regressed the feature was
unreasonably hard, for reasons that I was already familiar with: a lot
of groff data structures have representations that are opaque to the
programming language.  Because *roff _is_ a programming language, not
having a mechanism for it to dump structures that are relevant to the
user (like user-defined characters) is a significant impediment to
debugging not just for groff developers, but for document authors.

Being able to dump such things would help to root-cause not just
Savannah #66675, but other troublesome issues like Savannah #66837[3]
and Savannah #66805[4].  In too many circumstances, to really track down
an issue with the transformation of input to output in the GNU troff
formatter, it's necessary to launch a symbolic debugger.  In my opinion,
that's a failure.  Debuggers' strength lies in helping you resolve
problems with control flow ("logic", we often say), and not as much with
data representation.

So what I decided to do was to take a new feature I'd already
implemented, which exists and works in groff Git since 30 April, the
`pline` request, and give it more power.

     .pline     Report, to the standard error stream, the list of output
                nodes corresponding to the pending output line.

In my working copy, it is documented differently.

     .pline     Report, in JSON syntax to the standard error stream, the
                list of output nodes corresponding to the pending output
                line.  In JSON, a pair of empty brackets =E2=80=9C[ ]=E2=80=
=9D
                represents an empty list.

I've got lots and lots of this working, including recursion when nodes
contain (lists of) other nodes.  It's trivial to detect when I've
screwed up the output syntax because jq(1) complains about it, so I have
some hope that I'm producing well-formed output.  And secrets are being
revealed.

As I chew my way through the many types of node groff defines, I keep
finding new data types I need to be able to dump, and so I have to go
off on a tangent to permit their dumping.  But this isn't mere
completism; I've been complaining for years that I wanted a macro
dumper, and because--it turns out--groff re-uses the `macro` class for
some things that it arguably shouldn't (just like `symbol`), I need the
macro dumper in order to make discoverable two things: (1) the contents
of a user-defined character [an acceptable use of `macro`, given how it
works] and (2) the contents of a device extension command [_not_ an
acceptable use of `macro` in my opinion[5]].

Anyway, since I _do_ want to release the damnable groff 1.24 sooner
rather than later, I mean to leave refactoring the device extension
node data structure for some other time, even though I already have
a `string` dumper.  All I want and need for right now is a way for a
`device_extension_node` to dump itself to stderr.  And that means
writing a macro dumper.

But guess what?  Once I have a macro dumper, I can cross _another_
old goal off the list.

And that's--having a macro dumper!  Ever wanted to ask the formatter
to tell you what's _really_ in a macro?  Well, soon you'll be able to!
I should be able to hook this up to `pm` with little effort, to `pchar`
with little more, and then bada-boom, bada-bing, we'll have inspectable
character definitions, macros, (*roff) strings, _and_ diversions.

Now, before you get _too_ excited, my goal for now--for 1.24--is only to
represent these things as JSON strings.  Meaning that all those places
GNU troff uses C0 and C1 controls to represent `nodes` are likely to get
dumped as inscrutable character codes: think "\u000B".  It won't take
much experience to learn that these are nodes, but to decode them you'll
still need the groff source tree.[6]

"But wait," you may be wondering, "didn't you just imply that you have a
recursive node dumper?"  Yes.  But the `macro` class is weird.  The
information most users really want (the contents) is in a sub-object of
type `macro_header`[7].  And _that_ object does a funny thing.  It
represents its contents in two ways simultaneously: as a `char_list` and
a `node_list`.  That makes only partial sense to me.  I know why you'd
need both--nodes can have a lot of data, where as `\u000B` encodes only
the _kind_ of node at that place in the macro--but I still experience a
bit of a Philip J. Fry squint when considering the `macro_header` type.
Possibly, an optimization has been performed to speed iteration through
the macro, and that's why we don't have just one list of objects that
can be either proper characters or `node`s, the latter with their full
payload.

So, for groff 1.24, I don't expect the macro dumper to be as helpful as
it could be.  But it _will_ be helpful to tell us when a device
extension command node contains nodes--which it should not do.  We
developers can maybe then attack the cases where they occur with more
visibility into what we're doing.  For the past year or so I've been
gunning at that problem in much lower light, which I think is at least
in part why Savannah #66675 happened.

Here's what the `git --log --oneline` of my working copy looks like.

25dbd2c40 (HEAD -> master) [troff]: Implement recursive node dumping (8e/x).
86cbc983b [troff]: Implement recursive node dumping (8d/x).
9c8adf1b0 [troff]: Implement recursive node dumping (8c/x).
9d5e3c8f1 [troff]: Implement recursive node dumping (8b/x).
aaf9ab17f [troff]: Implement recursive node dumping (8a/x).
652bd0999 [troff]: Implement recursive node dumping (7/x).
49d5260b0 [troff]: Implement recursive node dumping (6/x).
45bc27083 src/roff/troff/node.{h,cpp}: Annotate next steps.
05561276e NEED EXAMPLE [troff]: Implement recursive node dumping (5t/x).
3b897b472 [troff]: Implement recursive node dumping (5s/x).
43050da14 [troff]: Implement recursive node dumping (5r/x).
58cc84208 REWORD [troff]: Implement recursive node dumping (5q/x).
7a298e56b [troff]: Implement recursive node dumping (5p/x).
bd1d75190 [troff]: Implement recursive node dumping (5o/x).
037010eb7 [troff]: Implement recursive node dumping (5n/x).
835d7e181 [troff]: Implement recursive node dumping (5m/x).
8d1c061d2 [troff]: Implement recursive node dumping (5l/x).
b9e48b758 [troff]: Implement recursive node dumping (5k/x).
dccbd0600 [troff]: Implement recursive node dumping (5j/x).
e977c49b3 [troff]: Implement recursive node dumping (5i/x).
11efa353a [troff]: Implement recursive node dumping (5h/x).
eede69c3f [troff]: Implement recursive node dumping (5g/x).
e77e5a5d8 [troff]: Implement recursive node dumping (5f/x).
b52c3db6b [troff]: Implement recursive node dumping (5e/x).
ff1ee40a5 [troff]: Implement recursive node dumping (5d/x).
dbc926e0e [troff]: Implement recursive node dumping (5c/x).
d2918b88d [troff]: Implement recursive node dumping (5b/x).
d0ed8fc7f [troff]: Implement recursive node dumping (5a/x).
757390dba [troff]: Implement recursive node dumping (4/x).
e21b22cd6 [troff]: Implement recursive node dumping (3/x).
51245af62 [troff]: Implement recursive node dumping (2/x).
08444f311 [doc,man]: Revise description of `pline` output.
606fab045 [troff]: Implement recursive node dumping (1/x).
cefa3e337 [troff]: Revise `pline` output style.
fc0d2de71 XXX squash more squash
068aa1925 XXX squash after verifying correct operation
ec7ed6f69 [libgroff]: Support JSON extraction of `symbol`s.
8fed5923b [libgroff]: Support JSON extraction of `string`s.
55d607746 (origin/master, origin/HEAD) [troff]: Unit-test `.devicem` and `\=
Y`.

I'm attaching a copy of the script I've been using to exercise this
stuff, and the output it produces.  The latter should be given to jq(1)
for best results.

Regards,
Branden

[1] https://savannah.gnu.org/bugs/?66675
[2] https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?id=3D55d607746380=
6294bd7e38c633f438a90c02a9a5#n131
[3] https://savannah.gnu.org/bugs/?66837
[4] https://savannah.gnu.org/bugs/?66805

[5] I cannot imagine why `macro` was selected as the data structure to
    back the contents of a device extension node.  It seems to me that
    groff's `string` class (which isn't C++'s, because groff is _old_)
    would serve just as well because it's really a memory buffer.  No
    byte values are invalid, and it's not null-terminated.  A `macro`
    can contain a mixture of characters and `node`s, but nodes no longer
    exist once device-independent output is produced.  The entire point
    of device-independent output is to translate *roff's internal
    representations of typesetting objects ("nodes") into a page
    description language.  Letting nodes escape into the output of GNU
    troff would be like having your GCC output sprinkle the lists of
    assembly instructions it produces with chunks of RTL or GIMPLE.
    That strikes me as..."ill-conceived" is the politest way I can
    phrase it.

    Any time James Clark or Werner Lemberg wants to show up and smack
    some sense into my head--please do!

[6] Here's where to start.
    https://git.savannah.gnu.org/cgit/groff.git/tree/src/roff/troff/input.h=
?id=3D55d6077463806294bd7e38c633f438a90c02a9a5

[7] Why is the meaty "body" of a macro called the "header"?  Ask Clark.

--5rwcfitxr6sd7xdh
Content-Type: application/x-sh
Content-Disposition: attachment; filename="newmodel.sh"
Content-Transfer-Encoding: quoted-printable

#!/bin/bash=0A=0A# Are we in the right dir?=0Aif ! [ -r MODEL0 ]=0Athen=0A	=
echo "file 'MODEL0' does not exist or is not readable" >&2=0A	exit 1=0Afi=
=0A=0Aexport GROFF_DUMP=3D1=0A=0A> NEWMODEL=0Aecho '.PSPIC doc/gnu.eps' | .=
/build/test-groff -z >> NEWMODEL 2>&1=0Aprintf '\\Z@abc\\h#6n#@def\n' | ./b=
uild/test-groff -z >> NEWMODEL 2>&1=0Aprintf '\\Z@abc\\h#6n#@def\n.pline\n'=
 | ./build/test-groff -z >> NEWMODEL 2>&1=0Aprintf '\l@6A@\\Z@abc\\h#6n#@de=
f\n.pline\n' | ./build/test-groff -z -Thtml >> NEWMODEL 2>&1=0Aprintf '.pli=
ne\n' | ./build/test-groff -z >> NEWMODEL 2>&1=0Aprintf 'shu\\[u0066_0066_0=
06C]e super\\%%tanker \\l@6A@\\Z@abc\\h#6n#@def\n.pline\n' | ./build/test-g=
roff -z >> NEWMODEL 2>&1=0Aprintf 'space\\:node\n.pline\n' | ./build/test-g=
roff -z >> NEWMODEL 2>&1=0Aprintf 'extra-size\\x@3p@node\n.pline\n' | ./bui=
ld/test-groff -z >> NEWMODEL 2>&1=0Aprintf 'horizontal-motion\\h@1m@node\n.=
pline\n' | ./build/test-groff -z >> NEWMODEL 2>&1=0Aprintf 'vertical-motion=
\\v@1m@node\n.pline\n' | ./build/test-groff -z >> NEWMODEL 2>&1=0Aprintf 'h=
line\\l@3n!@node\n.pline\n' | ./build/test-groff -z >> NEWMODEL 2>&1=0Aprin=
tf 'vline\\L@3n!@node\n.pline\n' | ./build/test-groff -z >> NEWMODEL 2>&1=
=0Aprintf 'italic-corrected node \\f[I]f\\/\\f[]) \n.pline\n' | ./build/tes=
t-groff -z >> NEWMODEL 2>&1=0Aprintf 'left-italic-corrected node (\\,\\f[I]=
f\\f[]\n.pline\n' | ./build/test-groff -z >> NEWMODEL 2>&1=0Aprintf 'overst=
rike node \\o@O+@\n.pline\n' | ./build/test-groff -z >> NEWMODEL 2>&1=0Apri=
ntf 'bracket node \\b@+|+@\n.pline\n' | ./build/test-groff -z >> NEWMODEL 2=
>&1=0Aprintf 'device extension node \\X@custom-command@\n.pline\n' | ./buil=
d/test-groff -z >> NEWMODEL 2>&1=0Aprintf 'draw node \\D@l 1i 1i@\n.pline\n=
' | ./build/test-groff -z >> NEWMODEL 2>&1=0A
--5rwcfitxr6sd7xdh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=MODEL8d

[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "zero_width_node", "diversion level": 0, "is_special_node": false, "contents": [{"type": "dummy_node", "diversion level": 0, "is_special": false}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "a"}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "b"}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "c"}, {"type": "hmotion_node", "diversion level": 0, "is_special": false, "hunits": 30000, "was_tab": false, "unformat": false, "terminal_color": "default"}]},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "f"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "hline_node", "diversion level": 0, "is_special_node": false, "hunits": 144, "contents": [{"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "A"}]},
{"type": "zero_width_node", "diversion level": 0, "is_special_node": false, "contents": [{"type": "dummy_node", "diversion level": 0, "is_special": false}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "a"}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "b"}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "c"}, {"type": "hmotion_node", "diversion level": 0, "is_special": false, "hunits": 144, "was_tab": false, "unformat": false, "terminal_color": "default"}]},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "state": "<state>", "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "state": "<state>", "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "state": "<state>", "character": "f"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 24, "width_list": [{ "width": 24, "sentence_width": 24 }], "unformat": false}]
[ ]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "s"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "h"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "u"},
{"type": "composite_node", "diversion level": 0, "is_special_node": false, "character": "\\Fl"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "s"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "u"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "p"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "dbreak_node", "none": {"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"}, "pre": {"type": "kern_pair_node", "diversion level": 0, "is_special": false, "amount": -200}, "diversion level": 0, "is_special": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -100},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "hline_node", "diversion level": 0, "is_special_node": false, "hunits": 60000, "contents": [{"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "A"}]},
{"type": "zero_width_node", "diversion level": 0, "is_special_node": false, "contents": [{"type": "dummy_node", "diversion level": 0, "is_special": false}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "a"}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "b"}, {"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "c"}, {"type": "hmotion_node", "diversion level": 0, "is_special": false, "hunits": 30000, "was_tab": false, "unformat": false, "terminal_color": "default"}]},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "f"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "s"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "p"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "space_node", "diversion level": 0, "is_special_node": false, "hunits": 0},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -150},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "break_char_node", "diversion level": 0, "is_special_node": false, "break_code_before": 2, "break_code_after": 0, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "s"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "z"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "extra_size_node", "diversion level": 0, "is_special_node": false, "vunits": 3000},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "h"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "z"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "l"},
{"type": "break_char_node", "diversion level": 0, "is_special_node": false, "break_code_before": 2, "break_code_after": 0, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "m"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "hmotion_node", "diversion level": 0, "is_special_node": false, "hunits": 10000, "was_tab": false, "unformat": false, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -150},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "l"},
{"type": "break_char_node", "diversion level": 0, "is_special_node": false, "break_code_before": 2, "break_code_after": 0, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "m"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "vmotion_node", "diversion level": 0, "is_special_node": false, "vunits": 10000, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "h"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "l"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "hline_node", "diversion level": 0, "is_special_node": false, "hunits": 15000, "contents": [{"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "!"}]},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "v"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "l"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "vline_node", "diversion level": 0, "is_special_node": false, "vunits": 15000, "contents": [{"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "!"}]},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "l"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "break_char_node", "diversion level": 0, "is_special_node": false, "break_code_before": 2, "break_code_after": 0, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "italic_corrected_node", "diversion level": 0, "is_special_node": false, "hunits": 1960, "contents": [{"type": "glyph_node", "diversion level": 0, "is_special": false, "character": "f"}]},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": ")"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "l"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "f"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "break_char_node", "diversion level": 0, "is_special_node": false, "break_code_before": 2, "break_code_after": 0, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "l"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "break_char_node", "diversion level": 0, "is_special_node": false, "break_code_before": 2, "break_code_after": 0, "terminal_color": "default"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "("},
{"type": "left_italic_corrected_node", "diversion level": 0, "is_special_node": false, "hunits": 1970},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -150},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "s"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -100},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "overstrike_node", "diversion level": 0, "is_special_node": false, "max_width": 7220},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "b"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "a"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -100},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "bracket_node", "diversion level": 0, "is_special_node": false, "max_width": 5640},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -250},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "c"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -150},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "t"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "s"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "i"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "device_extension_node", "diversion level": 0, "is_special_node": true, "tfont": "TR", "stroke_color": "default", "fill_color": "default"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]
[{"type": "line_start_node", "diversion level": 0, "is_special_node": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "r"},
{"type": "kern_pair_node", "diversion level": 0, "is_special_node": false, "amount": -150},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "n"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "o"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "d"},
{"type": "glyph_node", "diversion level": 0, "is_special_node": false, "character": "e"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false},
{"type": "draw_node", "diversion level": 0, "is_special_node": false, "code": "l", "npoints": 1, "font_size": 10000, "stroke_color": "default", "fill_color": "default", "point": "(72000, 72000)"},
{"type": "word_space_node", "diversion level": 0, "is_special_node": false, "hunits": 2500, "width_list": [{ "width": 2500, "sentence_width": 2500 }], "unformat": false}]

--5rwcfitxr6sd7xdh--

--ktn25nz5nhuht45x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmfNu5gACgkQ0Z6cfXEm
bc4Gmg/+NyNH6h/aAoMAdBqEEjIg8RpMCIZOH0q4QRgDFsqRc8Y82gpkBgsSCRVS
IDVtjXMVIBs/kRDntzhUxIGfzJ7GYl12T37zyuEzUQTXIteySU1hRvIXJJe6H9B0
p6glEHgcDPAa5cJPkWxkXc/MvIfeVOpknmVYssbRUh2h8m8MoBl+X3VzeXrnE82s
D/ft8y3rIIEj4Vfu9bhmSHdpk7D7bS/I6rz4XRgAJ3wAoxU2hXP38tPk4kw2ilew
lBt1Tcx6oLvhH8yP0s2+A8onBqnV4bMx+w5w37Gp+pLCll7yi0e6U1k3ZoDibuIJ
6wS14OFh67FKnGxA7ITdMTqECkX/Vbmgp3Bljao8HJ6nsZcM9/GcSRdAxEE8gzPm
o6ybxXdbz7gbgpV6h81hckpkYpyumxynECXLxsESdgiYhsw6HFc3LSNdBkCPZn6d
6b2FkbSsNQOZ6gENZPhb3FisX0os9bI1p7HZ7ckeilTDt7JIeyvPE6vChU+rb+T9
Mik4szmATGoOWrAABJKEqc7cNPU7d+LwU5Wob70QGG031uadoD7R9oDQ7NDHHQI5
Dadm8zMlD4dWTC3inNltmdDmvBMD2ZiYu1HDp/O4LQ+1y8Dtkf/YfIZp9jxPKj3s
sCw9LTF2uQtzoUUgpDokVyv4qur9eRUN/clF52EExay49hNJg0A=
=zpni
-----END PGP SIGNATURE-----

--ktn25nz5nhuht45x--

