Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1A1D655EC2
	for <lists+linux-man@lfdr.de>; Mon, 26 Dec 2022 00:21:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbiLYXVP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Dec 2022 18:21:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiLYXVO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Dec 2022 18:21:14 -0500
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28CFB2BC5
        for <linux-man@vger.kernel.org>; Sun, 25 Dec 2022 15:21:13 -0800 (PST)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-14fb3809eaeso5454978fac.1
        for <linux-man@vger.kernel.org>; Sun, 25 Dec 2022 15:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=twueReMeXngU/VezPssY6sGbozYtT1I1K85IUXVPgqA=;
        b=kh8to9xP1J2e0n9If6720Dg9cejSx3/wr858hLASGaffDcHaRgc5rDYWkMSHoyWVye
         0+c+93dpYYLEsPNGzkmzuzavsgOVHWIPrSE9y9opskzMEJpR45v7ZlHhEqTwJldJgKhM
         KHHItBt3Y31QST7hlCwv4+GrEkmSRj57h8rQD2kCIKprQDsSwnMdpAJPoOtm5eXREO0Z
         2QO329jid4PEq+FMHNrWZTrdz5y+IlIUVp7fqWqioM3R8ZNGn0SC6UB89ogXrctReZif
         Zw1LgbYGZTJ9Fkcd8C3B7ah+CjkubVz5T0CUEpixfkFv11e9gp3voqymB4lfAzmNkyxt
         0sRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=twueReMeXngU/VezPssY6sGbozYtT1I1K85IUXVPgqA=;
        b=ZfFpUOCc+uYDR5kCA4u5sR02kHpUW7A/L/dcmmWO2P02Cgrs6UMC7GOSRZsNVyJdne
         FGedWr1d4bRNjhtOCs7tSZ8Iv6E0LIb3XGqxA5nve3wcFksuBHTKx9i0lKoitD0ZgYbt
         AEplDI7rTrg8qkWEKp3dmEu1YMQ7R30TNsVSpoFBo2Pw3XsNmUv9rQYG/Ok+WordjqDG
         ZAb9pYkGTKuXp1ECaCi3dWLxEP1q/o/fHh9acJoqwIAvQsFdNWmekD1Eb98DEyjPSFAN
         oRhMPqGbacto1x0ZgngoxQ/8ZXcqAr1uFtA5qinA+Ae2wxhhhEC+27TRaI3vfwiDiW2g
         r5ng==
X-Gm-Message-State: AFqh2kpn3rzVz86CcS5rZfKVjx7LXgBCxYTh4rLwq2qX+a3wK7oT9cHV
        +7DK7fdCMlk5HcYsHMmpeCTQKkY4v3PuTA==
X-Google-Smtp-Source: AMrXdXvMPO4nOGVbLDUaTblcW/aBXNlMcp/YV4R3R8ImEh+Qj7Ev3qquDufjvQtONUS72rvvOtYA3A==
X-Received: by 2002:a05:6871:b20:b0:14f:d036:fdb with SMTP id fq32-20020a0568710b2000b0014fd0360fdbmr3052087oab.41.1672010471451;
        Sun, 25 Dec 2022 15:21:11 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u20-20020a056871059400b00140d421445bsm4296356oan.11.2022.12.25.15.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 15:21:10 -0800 (PST)
Date:   Sun, 25 Dec 2022 17:21:09 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Lennart Jablonka <ljabl@ljabl.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Doubts about a typo fix
Message-ID: <20221225232109.sytdn4qrswtnbes4@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <20221126035253.pli53qzgfx6tbax5@illithid>
 <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu>
 <20221126215604.p3un3a4hxf32h24p@illithid>
 <e6908ec3-8f9b-1568-e753-a38df6c61da7@cs.ucla.edu>
 <20221213192410.aisrx6gwqcwlodq5@illithid>
 <Y6jJhU2rQ3qBYwWD@fluorine.ljabl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="z26pz6dqhx3r6y34"
Content-Disposition: inline
In-Reply-To: <Y6jJhU2rQ3qBYwWD@fluorine.ljabl.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--z26pz6dqhx3r6y34
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

At 2022-12-25T22:07:01+0000, Lennart Jablonka wrote:
> Quoth G. Branden Robinson:
> > > > I believe Solaris troff to be fossilized
> > >=20
> > > Yes and no. Solaris 10 is no longer supported after January 2024,
> > > so if it and all the other traditional troffs die out by 2024 we
> > > can stop worrying about this then.
> >=20
> > That may in fact prove out; the only _currently-maintained_ troffs I
> > know of are groff, Heirloom Doctools troff (though it has slowed
> > down) and neatroff.
>=20
> I am devastated that 9front troff is unhesitatingly disregarded again
> and again like this.  While it=E2=80=99s seeing few commits, it is servin=
g us
> very well.

I apologize for forgetting; I shouldn't have, as I corresponded
fruitfully with Russ Cox regarding 9front man(7)'s `MR` macro, and
submitted a patch for (rudimentary) `\~` escape sequence support in P9US
troff, which Dan Cross merged swiftly.

> Nope, not all traditional troffs will die that easily.

I have gone out of my way to document traits of Plan 9{, from User
Space} troff in groff's documentation where the discussion warrants.

ChangeLog:      origin in Plan 9 troff.  [style] Add examples of use.
ChangeLog:      and, per Ingo Schwarze, Plan 9 troff.  (It is, however, not
NEWS:  Plan 9 from User Space's troff in August 2020.  Its purpose is to
NEWS:  vary the line length freely (DWB troff, Solaris troff, Plan 9 troff)
doc/groff.texi:characters' length.  Also, Plan@tie{}9 @code{troff} allows t=
abs to
doc/groff.texi:@cindex @code{.S} register, Plan@tie{}9 alias for @code{.tab=
s}
doc/groff.texi:@cindex @code{.tabs} register, Plan@tie{}9 alias (@code{.S})
doc/groff.texi:argument to the @code{ta} request.@footnote{Plan@tie{}9 @cod=
e{troff}
doc/groff.texi:1c6ab0f6e, 2016-09-13), and Plan@tie{}9 from User Space @cod=
e{troff}
doc/groff.texi:Plan@tie{}9 @code{troff} all support it.} but valid values a=
re specific
doc/groff.texi:files.@footnote{Plan@tie{}9 @code{troff} has also abandoned =
the binary
man/groff.7.man:.\" request or macro name of two characters' length.  Also,=
 Plan@tie{}9
man/groff_diff.7.man:and Plan\~9
man/groff_diff.7.man:and Plan\~9 from User Space
man/groff_diff.7.man:.I troff \" Plan 9
man/groff_font.5.man:(Plan\~9
man/groff_font.5.man:.I troff \" Plan 9
tmac/groff_man.7.man.in:those containing space \" or tab (in Plan 9 troff [=
only?])
tmac/groff_man.7.man.in:or Plan\~9
tmac/groff_man.7.man.in:Plan\~9,
tmac/groff_man.7.man.in:Plan\~9,
tmac/groff_man.7.man.in:Plan\~9,
tmac/groff_man.7.man.in:Plan\~9 from User Space's
tmac/groff_man.7.man.in:.BR \(rs(rg , \" Heirloom Doctools, mandoc, neatmkf=
n, Plan 9, Solaris
tmac/groff_man.7.man.in:.BR \(rs(lq , \" Heirloom Doctools, mandoc, neatmkf=
n, Plan 9
tmac/groff_man.7.man.in:.BR \(rs(rq , \" Heirloom Doctools, mandoc, neatmkf=
n, Plan 9
tmac/groff_man.7.man.in:.B \(rs(tm \" Heirloom Doctools, mandoc, neatmkfn, =
Plan 9
tmac/groff_man.7.man.in:but not by Plan\~9,
tmac/groff_man.7.man.in:.IR troff s. \" Plan 9, Solaris, DWB
tmac/groff_man.7.man.in:Plan\~9 from User Space
tmac/groff_man.7.man.in:.I troff \" Plan 9
tmac/groff_man.7.man.in:like Plan\~9 or Solaris
tmac/groff_man.7.man.in:.IR troff , \" Plan 9, Solaris
tmac/groff_man.7.man.in:Plan\~9 from User Space's

That's from groff Git (actually my working copy).  Compare to groff
1.22.3, before I started contributing.

config.guess:    *:Plan9:*:*)
doc/groff.texinfo:spaces.@footnote{Plan@tie{}9's @code{troff} implementatio=
n also allows
doc/groff.texinfo:@cindex @code{.S} register, Plan@tie{}9 alias for @code{.=
tabs}
doc/groff.texinfo:@cindex @code{.tabs} register, Plan@tie{}9 alias (@code{.=
S})
doc/groff.texinfo:The @code{troff} version of the Plan@tie{}9 operating sys=
tem uses
doc/groff.texinfo:files.@footnote{Plan@tie{}9 @code{troff} has also abandon=
ed the binary
man/roff.man:roff tools found in the OpenSolaris and Plan\~9 operating syst=
ems, now
man/roff.man:Plan 9
man/roff.man:The Plan\~9 operating system
src/libs/gnulib/build-aux/config.guess:    *:Plan9:*:*)

I'll try not to forget again.

Live long and prosper,
Branden

--z26pz6dqhx3r6y34
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOo2t0ACgkQ0Z6cfXEm
bc7N+hAAgu11g3gWzeHbVoKgF/azxZDNcGD9X/wS+GEITJOUI5OkcDHjEnV3/sdV
zmtWEWlkfcQlybkL53G9sp+CCF0KyyOXomxAJSiNJxI9DMtcPCk4j18xscywkrvh
Mrv44/9S8yJm5kLoos4b99auO+ll+Vzh6gz8o1MGUmRB2gfyYrIFT1aLt7Fmzdt7
APA/7YS0uQJ0jOTM4Ju2MujWI9PKNqNz7D+TRWUbmjTyv+bACJQQWDrkInvskcaw
0xhzA/D4L3wdxu3G7fc9p4rDw2Xm2X14o2kXZK5m+7BDCUNCmsI+LdPm3yxzesVT
ptTu0dDFmxTjMbdNZJYFGePoToC39ON3pLq8GFGPdL8G5L8BORLgxMaoqSpTqA9B
jfz0r1BkG5ijjb9ghdFWoqSrIGfg4e6DYf/LWEUDsLUuQ0mVB3COUBUmzkbYps2e
w9WUKy5t0Rfamf0+Z3z8rTP142a6tnEc0+5StlfoN8U4JiKTuLZBhht0XHQydM6i
EN/2d2qZr9LQi/02y3235p7vdl2GXKvIEYQCC/njK/s9Fs+2CqHrNNxG0Hhcgm6S
f/v3fQQWNIkB/FFqq61cJvXX5mqghP/nNEj/C6xeJm0+C5xspMmbHN69pgQaoFoc
YT05X2y+DDbI0CMfAI6wKOJs4uMjAvJxgcYk4VLX5/yiOUPuXa4=
=FObP
-----END PGP SIGNATURE-----

--z26pz6dqhx3r6y34--
