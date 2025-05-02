Return-Path: <linux-man+bounces-2852-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B18AAA74F9
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 16:29:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 661341757EB
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 14:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F087F2561CE;
	Fri,  2 May 2025 14:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VHXvE/h0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1265A42A8B
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 14:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746196152; cv=none; b=ZlBmcmHFvhkQxi3dnfh4Zc2RSYaCzmSKD6bNscjnZ7ns7F2zTMr2ZtOnNYntKXmun/rbYKo7YG2prFiXsJp8yZNrfFhmqgpl++bMlJx3QLk56unn+ekBcaYjRpk0LCT7TBO+RM4JMS48i+EvO+vY2UA9kVvDZDJelHwmsqDFOVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746196152; c=relaxed/simple;
	bh=/BITAUqa8K2RZCNhvDQVT+u565bcijqwlEO/7W/FLzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VWO+/D2QnXvRpTt+dJNucDGBU7qCDTTpZzD7qXtNdxZvoIRblrE4PeU8P9ArD/ycjITPrS+iY9rtfPQdHN3OO2qzh/fNzsQz+M54GLItcUCAGjSZ0zjQDkuGbtIRCISInq+HxO/i2an654aaIq1+6nMgfJ7KHXrULLuRe92WdVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VHXvE/h0; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-72c13802133so502091a34.3
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 07:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746196150; x=1746800950; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZS3RaeLN3H35JMTi7zUqyqxhGCNpcoUYRt0qbg9Vp7I=;
        b=VHXvE/h0IJsPJi+RcJJ2nP5/wvXbry9pDrUaYy6z1tXLsFKSctGg4cU5Q/2yhrzxY+
         U6ISdgMk9xkbEcN7jcPttq8E9eMs96TvMs3WESfOeD2DlSb4cnF8MtHTc1U5Y+K+W2La
         +UflnhJRRaYHNNPEbzEvQUIcacHSKOVEJvHxFjVE1TJN7hVxODNljFYe9qBXMCNdgfeP
         Gi3YUGU0JbTZUF9EfHghTqUzMVhdc82DoRI26gVNJh30anjtW8UCMsx1BPAdeb/C8a8I
         /nFzYs3+IADogfoNLK8cuqmSL9nGol2WYvu1ryqh+G3bkj0yVR61IfDnD3vdFMuVKydi
         /Niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746196150; x=1746800950;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZS3RaeLN3H35JMTi7zUqyqxhGCNpcoUYRt0qbg9Vp7I=;
        b=GmzKOyNKJfm9BIfEMNagtSvq8VK9WbqOQsmtxT2eijJevpTEPRW8yBcDsxn7tbymGh
         FTQwWM6/YFB3OCvf/BNdGOuYpyYbD8Gdn0Avmj6tYbWNR64MODOJ9+H+c98JkJ/FrkKK
         ysWGmzVV65OxtO5oXqZF8+rnH5UywCHdeoFErjgxcHWAZZ04txrbOBP09N9ZERM4MPld
         5exg+iBnTa7allp3pZhr/u9q3svkOf3uS85JNwI4R3k8c6gGm88j7ay/xFCQDE8HNi9F
         iYmi4IEMx5BRBmIhbRDiOMf2HKbKWl9NaIjpM/xzVNwBfJxIUPDDbyYpkp1aOrvldWZW
         OCTg==
X-Forwarded-Encrypted: i=1; AJvYcCXTlF3W+C08NN9xAP7uwvu2Ba2qKOjhjB2rOzvhLTm5FgzvTn2uiY3dZvUUxlunhDM5h3zJaJ52PSg=@vger.kernel.org
X-Gm-Message-State: AOJu0YzAxD13GjSOzFhIVrEG6hgXXNx1o3AJDdlURrWA/CdMX53wrFg2
	8Lxzl5w/FdR5zv88dWd9J5lP4nkumEmI6QsvjJztSNgEKyR2bifC
X-Gm-Gg: ASbGncv4pRfHYoTHgJKVkBlg2HddeXdhzdEATMQYr1WOVwnpo8owsW4SEuTHS/934Wy
	zdGDlA1rNO5lf37iTZAJwGvUeW9QazsDHY/FG2QX/AT2NI79WAkBR/a4SciYaRqNU1q7blsMqcP
	SS8IZU163FVj4weyEysS7JEaBnG4Xh5mqRcVOV/1kOjvrCNZIrcTMyBU5uHUE8budSgLRJ6IJrZ
	uvTSf/IiiSMjdOLLUodMuEGWcYsuzrWCME2v8prlOaFGQAQS95QQjbHw1WYlWDo1uCKizV/AH4Y
	dKQSex0Z83rrsjwhWaTdhuybu+eaOCM=
X-Google-Smtp-Source: AGHT+IEELn8RXtyZ39Vf5wruA0Rk2ILV1pi3jjjjHIPYMKHhvJ4QvBeWqBopYaof/UOpj6gJTkUoKw==
X-Received: by 2002:a05:6830:470a:b0:727:4356:9f07 with SMTP id 46e09a7af769-731da17b13dmr1694768a34.14.1746196149882;
        Fri, 02 May 2025 07:29:09 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-731d31a2839sm510375a34.6.2025.05.02.07.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 07:29:09 -0700 (PDT)
Date: Fri, 2 May 2025 09:29:07 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <20250502142907.yjzcdv6cdhryg2l5@illithid>
Reply-To: groff@gnu.org, linux-man@vger.kernel.org
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <n5coqz6wcslpxfj7l32b5m765xwzn53zlcqi7hgreefe3r5l4h@3o6auzkcijud>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fqxpfdeh57t3fhmq"
Content-Disposition: inline
In-Reply-To: <n5coqz6wcslpxfj7l32b5m765xwzn53zlcqi7hgreefe3r5l4h@3o6auzkcijud>


--fqxpfdeh57t3fhmq
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="6e2lh67a6gnxwxw7"
Content-Disposition: inline
Subject: Re: Paragraphs formatted differently depending on previous ones
MIME-Version: 1.0


--6e2lh67a6gnxwxw7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2025-05-02T14:42:12+0200, Alejandro Colomar wrote:
> By default, I prefer keeping adjustment.  Often, I want to see changes
> in adjustment too as part fo the diff.  Maybe I should add an option to
> disable adjustment optionally, which could be useful in those cases
> where the diff is a bit hard to understand.

For myself, I found that editorial changes to recast wording or
otherwise add and remove material led to cascading reports of
differences _only_ to spaces in adjusted lines, which usually aren't of
interest to me.

> > for P in *.[157]
> > do
> >     if [ "$P" =3D groff_mmse.7 ]
> >     then
> >       LOCALE=3D-msv
> >     else
> >       LOCALE=3D
> >     fi
>=20
> What's -msv?

groff_tmac(5):

   Localization packages
     For Western languages, an auxiliary package for localization sets
     the hyphenation mode and loads hyphenation patterns and exceptions.
     Localization files can also adjust the date format and provide
     translations of strings used by some of the full=E2=80=90service macro
     packages; alter the input encoding (see the next section); and
     change the amount of additional inter=E2=80=90sentence space.  For Eas=
tern
     languages, the localization file defines character classes and sets
     flags on them.  By default, troffrc loads the localization file for
     English.
=2E..
     sv     Swedish; localizes man, me, mm, mom, and ms.  Sets the input
            encoding to Latin=E2=80=901 by loading latin1.tmac.  Some of the
            localization of the mm package is handled separately; see
            groff_mmse(7).

> >     echo $0: $P >&2
> >     echo "groff $ARGS $LOCALE $P" > "$P.cR.txt"
> >     groff $ARGS $LOCALE "$P" >> "$P.cR.txt"
> > ...
> > done
>=20
> Would you mind sharing the entire script?  I might get ideas for
> improving diffman-git(1).

Sure; it's crude and dumb (like its author?)--I don't generally spend a
lot of software engineering effort on stuff I produce only for my own
consumption.  I've attached it.  The script name is revealing of some of
my music listening habits.

> (And maybe you can drop your script if
> diffman-git(1) would be good-enough for you.)

If it stops working for the limited purpose I require it, I may look
into alternatives.  :)

> The RE movement is intended to indent the "Since Linux 6.7," para.

I'd need to look at more context, and haven't, but `IP` already does
that.  The interaction of `RS` and `RE` with `IP`, and the erstwhile
lack of documentation thereof, is in fact the proximate cause of my
involvement with groff development.

groff_man_style(7):

Notes
     Some tips on composing and troubleshooting your man pages follow.
=2E..
     =E2=80=A2 RS doesn=E2=80=99t indent relative to my indented paragraph.

       The RS macro determines the inset amount, the position at which
       an ordinary paragraph (P and its synonyms) is set; the value of
       the IN register determines its default amount.  This register
       also determines the default indentation used by IP, TP, and the
       deprecated HP.  To create an inset relative to an indented
       paragraph, call RS repeatedly until an acceptable indentation is
       achieved, or give RS an indentation argument that is at least as
       much as the paragraph=E2=80=99s indentation amount relative to an
       adjacent ordinary (P) paragraph.

       Another approach to tagged paragraphs places an RS call
       immediately after the tag; this also forces a break regardless of
       the tag=E2=80=99s width, which some authors prefer.  Follow=E2=80=90=
up paragraphs
       under the tag can then be set with P instead of IP.  Remember to
       use RE to end the indented region before starting the next tagged
       paragraph (at the appropriate nesting level).

Regards,
Branden

--6e2lh67a6gnxwxw7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=harry-manback

#!/bin/bash

set -e

if [ $# -ne 1 ]
then
    echo "need a directory argument (e.g., \"old\", \"new\")" >&2
    exit 1
fi

if ! [ -x ./build/test-groff ]
then
    echo "./build/test-groff does not exist or is not executable" >&2
    exit 2
fi

groff () {
    ../build/test-groff "$@"
}

BFLAG=
#BFLAG=-b
DIR=$1

MANS=(
./src/utils/lkbib/lkbib.1.man
./src/utils/tfmtodit/tfmtodit.1.man
./src/utils/hpftodit/hpftodit.1.man
./src/utils/pfbtops/pfbtops.1.man
./src/utils/afmtodit/afmtodit.1.man
./src/utils/lookbib/lookbib.1.man
./src/utils/addftinfo/addftinfo.1.man
./src/utils/xtotroff/xtotroff.1.man
./src/utils/indxbib/indxbib.1.man
./src/roff/nroff/nroff.1.man
./src/roff/troff/troff.1.man
./src/roff/groff/groff.1.man
./src/utils/grog/grog.1.man
./src/devices/grodvi/grodvi.1.man
./src/devices/grolbp/grolbp.1.man
./src/devices/grops/grops.1.man
./src/devices/grohtml/grohtml.1.man
./src/devices/grolj4/grolj4.1.man
./src/devices/grotty/grotty.1.man
./src/devices/gropdf/gropdf.1.man
./src/devices/gropdf/pdfmom.1.man
./src/devices/xditview/gxditview.1.man
./src/preproc/preconv/preconv.1.man
./src/preproc/tbl/tbl.1.man
./src/preproc/soelim/soelim.1.man
./src/preproc/eqn/eqn.1.man
./src/preproc/eqn/neqn.1.man
./src/preproc/pic/pic.1.man
./src/preproc/refer/refer.1.man
./src/preproc/grn/grn.1.man
./contrib/pic2graph/pic2graph.1.man
./contrib/hdtbl/groff_hdtbl.7.man
./contrib/mm/groff_mm.7.man
./contrib/mm/mmroff.1.man
./contrib/grap2graph/grap2graph.1.man
./contrib/rfc1345/groff_rfc1345.7.man
./contrib/eqn2graph/eqn2graph.1.man
./contrib/gpinyin/gpinyin.1.man
./contrib/mom/groff_mom.7.man
./contrib/gdiffmk/gdiffmk.1.man
./contrib/glilypond/glilypond.1.man
./contrib/chem/chem.1.man
./contrib/gperl/gperl.1.man
./man/groff_tmac.5.man
./man/groff_out.5.man
./man/groff_diff.7.man
./man/groff_char.7.man
./man/groff.7.man
./man/roff.7.man
./man/groff_font.5.man
./tmac/groff_trace.7.man
./tmac/groff_me.7.man
./tmac/groff_ms.7.man
./tmac/groff_man.7.man
./tmac/groff_man_style.7.man
./tmac/groff_mdoc.7.man
./tmac/groff_www.7.man
)

MANS_SV=(
./contrib/mm/groff_mmse.7.man
)

mkdir "$DIR"
pushd "$DIR" >/dev/null

# the change logs, so we know approximately where we are
cp ../ChangeLog .

for d in chem gdiffmk glilypond gperl gpinyin hdtbl mm mom rfc1345 sboxes
do
	cp ../contrib/$d/ChangeLog ./ChangeLog.$d
done

# our Texinfo manual
cp ../build/doc/groff.txt .

# our Texinfo manual via HTML
cp ../build/doc/groff.html .
lynx -dump groff.html > groff.html.txt

# our ms manuals
groff $BFLAG -ww -Tutf8 -ept -ms ../doc/ms.ms > ms.txt

# our me manuals
#groff $BFLAG -ww -Tutf8 -me ../doc/meintro.me > meintro.txt
#groff $BFLAG -ww -Tutf8 -kt -me -mfr ../doc/meintro_fr.me > meintro_fr.txt
#groff $BFLAG -ww -Tutf8 -me ../doc/meref.me > meref.txt
me_pre=../ATTIC/my.me
groff $BFLAG -ww -Tutf8 -me $me_pre ../build/doc/meintro.me > meintro.txt
groff $BFLAG -ww -Tutf8 -kt -me -mfr $me_pre ../build/doc/meintro_fr.me \
    > meintro_fr.txt
groff $BFLAG -ww -Tutf8 -me $me_pre ../build/doc/meref.me > meref.txt

for F in ${MANS[*]} ${MANS_SV[*]}
do
    G=../build/${F%.man}
    if [ -f "$G" ]
    then
        cp "$G" .
    else
        echo "warning: \"$G\" missing" >&2
    fi
done

: ${AD:=l}

ARGS="$BFLAG -ww -dAD=$AD -rCHECKSTYLE=3 -rU1 -Tutf8 -e -t -mandoc"
NOCR=-rcR=0
LOCALE=
ARGS_HTML="$BFLAG -ww -rCHECKSTYLE=3 -Thtml -e -t -mandoc -P-C -P-G"

for P in *.[157]
do
    if [ "$P" = groff_mmse.7 ]
    then
      LOCALE=-msv
    else
      LOCALE=
    fi

    echo $0: $P >&2
    echo "groff $ARGS $LOCALE $P" > "$P.cR.txt"
    groff $ARGS $LOCALE "$P" >> "$P.cR.txt"
    echo "groff $ARGS $LOCALE $NOCR $P" > "$P.no-cR.txt"
    groff $ARGS $LOCALE $NOCR "$P" >> "$P.no-cR.txt"
    echo "<!-- groff $ARGS_HTML $LOCALE -P-I$P $P -->" > "$P.html"
    groff $ARGS_HTML $LOCALE -P-I$P $P >> "$P.html"
    rm "$P"
done

popd >/dev/null

# vim:set ai et sw=4 ts=4 tw=80:

--6e2lh67a6gnxwxw7--

--fqxpfdeh57t3fhmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgU1rMACgkQ0Z6cfXEm
bc4/2BAAp8U/u9TWqFym4chVzgIqw+80GE4HK4MHaUVq+YA0SHfmRwIGSB1ixcTN
ERtYR6VldOf3tHpMZnSn+ADsu6hap40VbBCGavZL7j0OsAOH3iGfRmBojrpTgzRL
ofxCVbTxjmqDPejzRJaUzYCN9zbdCTk2IBZ2pY/3PqbeN8TmVmq36Q+05e6SLzqm
eB47aqe28G4PJtABm8+CZynQa1pjMQxKMxSSzzdgt0hXY9dIw2ReVG1l1O2k8F+O
+zeDpXJgPVUpk1U0VXQjrutoIpPgdoOc2SQ34u7jF3uTXrGI77u58k60lWZb8yce
tU2uY0t7EwU9u05YoWrcOpylyXeszsgFpjVpMletQBP4ZLbOiiJliArvXe3E2ZDi
tT/v9bJxrO0OcxSYcdY1zjXQwTcUBdmoVfPu4aPxiqQsI8yP4dhv46BRG2MZ8CxO
V5hU5SDwqaYqfzX8HKO5LXLJ5o94SAV1mN4nsGjTrGSmMvTwWGwEUgTpUiNTfmrj
OJqMuMC5IMm4JzsAA3XQ+e0/7Fmc7RmbvhkvihPGXvyATRUFXwpuGhzBvcWBw0cL
LCkqKaXpaiR9UpXsij+uwjutgVxeVFLZgcBx61c54z74ZbUwGLMyriKqNxpMay0h
eeCcMiL8eHdX5OjXT5mezhUG0voTv+gbpeOviryv7B6zYXoHvVg=
=ci8Z
-----END PGP SIGNATURE-----

--fqxpfdeh57t3fhmq--

