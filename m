Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 612E9407F26
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 20:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230465AbhILSOE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 14:14:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230106AbhILSOD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 14:14:03 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 500F5C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 11:12:49 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id f129so7241378pgc.1
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 11:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PNJU9TaknyPjnZp3cNAljCG8/M46x2MPSYTldVisoio=;
        b=FCE46VbCk9n3fPUM2zuHKphD/F2cRB3zaUpNGVQSvWqHPRotbk6H0WNePpv+cSycyB
         zdPh5Y+bEBcLgDkHxZ73flPhjSRHQ+O4wGhE6j2+B1n1Ws4rbUfg2HkMYQVytmfvSsul
         7NIyL5w2xa1kcbN4wfPWQ/LCeBZkT7sTdw3ircrSOF9d+eRl0Oj8LcmQxVlOHltzKF4R
         twhFzQuj6q3PpaxNg4fad5vUTq9hRBxwiiJPC+AD2+2nyNWXjfdyU/4CwnVAQQlYDCbj
         qp6BVQ4mNtFT/PUk8jRx1Tlqx3rv7KqNGEQjgubTGCR5vb4ej4Od+iwY62HlZv+63ga9
         7HVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PNJU9TaknyPjnZp3cNAljCG8/M46x2MPSYTldVisoio=;
        b=BC9jAVjgZLSP7n9CMQtSglEHM/049jWATuvsytKHkw5gdh2PYKMg2glG36UdjwUZ2q
         WGo/fcdFsk3EpZrlpoBu156UWABkZWbhQFRh5R5+rIx0vzZipYbq8/DmZcPjo/Cynh2X
         1N2gXSjrEdd+vFpTD3QyQKI1TsmHxXXdK2ImZoT6iovkx1WRZ+rJ2QPI/T0uWpqMQvCZ
         VddMK/qSSXtvnx8TwRCCD4CRHf2cWB9cuDq+LH2j4FF/ZCEozeAcCX+J5Kv2+yFGpOGh
         L+/Ok8fU7TlXIkTRqGTneoZUzRtErFDBsWOfFLMPCvOiZecszwO6wMzcFZnRjGygSnpS
         9jXQ==
X-Gm-Message-State: AOAM5304fzeIW6kM35DtGl1anFI03O1/ex/IjbRyPzyd7S8OjL+6BhJN
        3sX92F4xL9VMdie0WXaqwt8=
X-Google-Smtp-Source: ABdhPJy7rq5qmfd61Gpwp6SSXOLquQ2M7on418gZMMYj9T+CVWb5EtVfmkm7Gj0QrH+O456Gy8D5/w==
X-Received: by 2002:a65:6213:: with SMTP id d19mr7647416pgv.110.1631470368702;
        Sun, 12 Sep 2021 11:12:48 -0700 (PDT)
Received: from localhost.localdomain ([1.145.22.133])
        by smtp.gmail.com with ESMTPSA id a71sm4661026pfd.86.2021.09.12.11.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Sep 2021 11:12:48 -0700 (PDT)
Date:   Mon, 13 Sep 2021 04:12:44 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, "Thaddeus H. Black" <thb@debian.org>
Subject: Re: [PATCH 3/3] Use subsections instead of sections
Message-ID: <20210912181242.pfbmwi3ayqyujda2@localhost.localdomain>
References: <YTluPPbquS6ZHmHL@b-tk.org>
 <20210909072442.423117-4-alx.manpages@gmail.com>
 <YT4MsXe46WlMa8i0@b-tk.org>
 <6ca6520f-ed0e-75b4-7eb2-972a8b8f1dfb@gmail.com>
 <30501890-2a01-3be2-ed51-568a1cd55397@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="s2x2ejbgfrzcgt5r"
Content-Disposition: inline
In-Reply-To: <30501890-2a01-3be2-ed51-568a1cd55397@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--s2x2ejbgfrzcgt5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-09-12T16:56:21+0200, Alejandro Colomar (man-pages) wrote:
> I'm a bit worried that this might be overcomplicating it, and maybe a
> hypothetical .SSS macro would be useful here (or another solution).
> Do you have any thoughts about it?
>=20
> That hypothetical macro would behave like .TP + .B + .RS (as shown
> above; and that .RS would only end at a following .SSS/.SS/.SH)

I've come to the view, due mainly to exposure rather than an attempt at
rigorous reasoning, that if you need subsubsections in a _man page_,
that the level of discussion for the page overall is too coarse.

It's pretty rare that I've seen a need for subsubsections expressed, and
I must confess to some unease with recruiting the tagged paragraph macro
to the purpose of achieving them.  To return to the perennial topic of
semantic macros, `TP` has considerable semantic value (much more than,
say, `SM` for small text), and that value is weakened if we reach for it
because we desire its _visual_ effect.

Do you have a list handy of the man-pages documents that you see as
requiring this kind of structure?  I can put on my technical writing hat
and see what I think of them.

For now, at the low level of *roff mac-fu, I don't actually see much of
a technical challenge.  Just as a first stab in the dark, he's here how
I might implement the beast you request.

=2Enr an-in-SX 0
=2Ede1 SX
=2E  if !\\n[.$] \
=2E    an-style-warn .\\$0 expects at least 1 argument, got \\n[.$]
=2E  if \\n[an-in-SX] .RE
=2E  TP \\n[.l]u
=2E  B \\$@
=2E  nr an-in-SX 1
=2E  RS
=2E.
=2Eam SH
=2E  nr an-in-SX 0
=2E.
=2Eam SS
=2E  nr an-in-SX 0
=2E.

Noteworthy points:

1. I wrote this on the fly while composing this mail; if you try it,
   don't expect it to work perfectly.
2. I defined the macro with groff's `de1` request so that the macro
   would be interpreted with compatibility mode off.  This enables the
   use of groff extensions even on Solaris where compatibility mode is
   on by default, but I don't know if anyone reads the Linux man-pages
   on Solaris boxen.  Plain `de` would be fine if they don't.  I
   needed only a couple of groff extensions anyway: (a) long request
   names and (b) bracket-based register interpolation syntax.  Neither
   of these is essential and the above could be implemented with few
   changes in vintage 1979 AT&T troff.
3. I used a groff man(7) internal macro to style check and warn if
   the number of parameters is not appropriate.
4. I told `TP` to use the width of an output line for the tag width.
   This guarantees that the paragraph proper won't begin on the same
   output line as paragraph tag no matter how short that tag is, which
   is what we want since we're faking a (sub-sub-)section heading.
5. I set up a Boolean variable to keep track of whether we're "in" a
   sub-sub-section.  For this to work cleanly I need to (a) initialize
   it outside of any macro definition; (b) test it so I know when I need
   to undo my relative inset for the subsection; and (c) append to the
   macros SH and SS since they already clear all relative insets,
   including any I may have set up with this new macro.

You might experiment with this by adding it to man pages that require
it.  This sort of material is then called "page-local macros" and Ingo
Schwarze and I both discourage such practice in publicly distributed man
pages[1].

To be able to manage sub*sections to arbitrary depth would require
maintenance of a stack or queue rather than a simple Boolean flag, but
it could be done.

However, my intuition is, again, that if you feel a strong pressure to
have three tiers of page organization before you even get to the level
of individual topics of discussion in paragraphs (tagged or otherwise),
maybe the page is trying to cover too much material.

Regards,
Branden

[1] Admittedly, groff itself still has some man pages with page-local
    macros.  I haven't deeply researched the history, but my impression
    is that they antedate mandoc(1) and a variety of "man2html" tools of
    divergent, mostly horrible, quality.  Some pages, like groff(7),
    will require a major effort to clean up.  However, groff 1.22.4 was
    already improved over 1.22.3 in this respect, and groff 1.23.0 will
    be _much_ improved.

--s2x2ejbgfrzcgt5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmE+QxIACgkQ0Z6cfXEm
bc5KJQ//aZPF/AUqLPus7o1ojDABi0/ySpue11IYji3gNGyxZNfw3XSF9fMWP6m3
La//rwV1v1wUuowkg2s8hUPIIZ7Iw2+h6Ym/15TRU+33pfWMpuEgc/arVf9RuVfD
BbIoPIRbp8rbXoj+xcUhqbn9t6VrhHv1sAeH7tw6e503Y4T5RnZ4OFpy0n2HwHl1
UDq8BC6DF96E+lYUdJF//aihYqcrOOnztGye4zfzHFXllJSSyRY/BIDfYwL6prpQ
8fXJCMFj85kjjepXBFb7FN34tayXNwTgVahVeMeULEq1VKR+24XSUkK+Bt4j1FFw
TRQaZjdASoa5Hw/uslgmfj59ZUlHay0xJo9aMDkw01gDXZxUfGdQE/uZY3wj7Hv8
aePMdeB+ZlEBlheZ8sm5G9DLKc1Im+2lN0b9GxoRCAyedN9YQBHTE4hREyf+I7Wa
UFpV+L6q93Y7SneWUGBjvo7xkmXw80bpDh+Km14bTO7ubG7T1nYbNH3vTW9ZG4/X
zPTFg2HNrw3pGgf9qhN2xr/+B72fQHqBqNeJqTjZxQe/mYGV2UWX2u/pZWdYYsxN
vZwMO4XxvQWQRNYXHm+EHJE7gY7pcvnab5ZVTIB4hd05MpltzBI4lfdHKdO+C8Da
xVg2iiVmRtIr9VKYHQqRylOSWQM2YmOkQ6kV/NOeSPyPMvPdTCA=
=upIF
-----END PGP SIGNATURE-----

--s2x2ejbgfrzcgt5r--
