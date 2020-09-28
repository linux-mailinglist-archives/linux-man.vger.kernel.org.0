Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12CD227ABFA
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 12:40:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726380AbgI1KkZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 06:40:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726328AbgI1KkZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 06:40:25 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FFC9C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:40:25 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id b17so404698pji.1
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Qh+rh8/4ywPrnJunNH74lZ+iRze+iHo6OPjBn6Ap1sU=;
        b=XaVPPbFBoCITZ0DkSmT/pVHloWWR8yoM4nEhaQD5W8NzD7eeEGuSbQOjYNpWbxM++B
         pd0scXR/I/eSHDRIFbTJHPH55+q9J6iRGO6uh/UfeNLAungqPwQ5MGwWul5Tn1BG65JJ
         0P5QeNgyb+4mVratPCvSeJJP+f8zEcIte79KPXnxzC/Y9CmGj2dmDmGfqWPNqAKuc5lj
         ez/jE9pKKlmEgtCRlPlMCWUYI0mFG8LBCff5aEXm4mjeu28LF7FQLsiQwuadUGomiwMK
         qblhFrEVlGHlrwFBmL/V7R58l9zHfWb/lQno/rVFb7kKhzA66F6af1Xkong6Ja44NgnY
         BOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Qh+rh8/4ywPrnJunNH74lZ+iRze+iHo6OPjBn6Ap1sU=;
        b=GhiidCMU2Ma9Z9e4oUZuyiJRIFbqVGiWmR3dF97XjO97RyEMh1cym6XrEIAetrQ/aY
         VUqXdhibNHEgtJ8BfDSUhfAILA2z1fRB4/KV20XOLYlkM3q0Da1xqQak03iT8R0ns76x
         ftPAi4NTAL2O10Szxwqp1B8LzkWL7TcX3K4QdvHYXYeThuFT5HgTABZYO5TXD+1Hr9Fo
         ujNpY5j1Gi2aARuw8WGADn0m0lWWFkpNNYCaNsgrR7A+jHHxxynaOHMTxMXwIqZeBdCL
         SqWo5+gTgomUabMtfxwgJU2B3TrRrJbHNxjXuXuz2JiA+HICmaJ4d4Nv7adVdcCppM8W
         MIyw==
X-Gm-Message-State: AOAM532owAaOc2Qm53kTyh6LJ8TvYE/OFvMfa8buIsO5qEU3VIQiJhRT
        ydz5QVr+ekEcAOMUodOyBrU=
X-Google-Smtp-Source: ABdhPJy8J+QecwNVBAly82/pTqFasAH+6zwPh6xkZVLpE23imMsPqF/+qVaXBXkmKPlyTlIAR6VLoQ==
X-Received: by 2002:a17:90b:50e:: with SMTP id r14mr730917pjz.230.1601289624740;
        Mon, 28 Sep 2020 03:40:24 -0700 (PDT)
Received: from localhost.localdomain ([1.129.174.163])
        by smtp.gmail.com with ESMTPSA id 124sm1165491pfd.132.2020.09.28.03.40.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 03:40:24 -0700 (PDT)
Date:   Mon, 28 Sep 2020 20:40:19 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 1/3] system_data_types.7: ffix
Message-ID: <20200928104016.za36rrtmgb55bh3v@localhost.localdomain>
References: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
 <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="53ty2xfmph5ggknd"
Content-Disposition: inline
In-Reply-To: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--53ty2xfmph5ggknd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-28T07:59:14+0200, Michael Kerrisk (man-pages) wrote:
> > Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>=20
> I do think this requires an explanation saying what you are
> trying to do with this change (and then perhaps a more expansive
> "Subject" also).
>=20
> I can visually see what you are doing with this patch,=20
> but I do wonder if there is a better way of doing it.
>=20
> I've dropped Branden into CC. Perhaps he has a comment.

Hi Michael, yes--thank you!

In my opinion, use of "raw" *roff requests in a man page is a "code
smell".

Let me have a look...

> > diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> > index 361e8d411..ff0403df9 100644
> > --- a/man7/system_data_types.7
> > +++ b/man7/system_data_types.7
> > @@ -66,7 +66,7 @@ system_data_types \- overview of system data types
> >  .TP
> >  .I aiocb
> >  .RS
> > -.PP
> > +.br
> >  Include:
> >  .IR <aio.h> .
> >  .PP

This is changed already from my most recent "git pull", so things are
moving fast indeed in this area!  Here's what I show currently:

=2E\"------------------------------------- aiocb ------------------------/
=2ETP
=2EI aiocb
=2EIP
Include:
=2EIR <aio.h> .
=2EIP
=2EEX
struct aiocb {

So first the indented paragraph was replaced (or proposed to be
replaced) by a relative inset (.RS) and a paragraph break (.PP).  It's
not visible in this diff where the relative inset ends, but I reckon
it's right before the next tagged paragraph (.TP).

Now, the .PP is being replaced by .br, I guess because you want to
eliminate some vertical space between the paragraph tag ("aiocb" in
italics above) and the following material?

However, .TP already does this for you when the tag is wider than the
paragraph indentation.  You probably discovered this yourself with
"ptrdiff_t".

I get the feeling you're going for something specific in terms of visual
presentation.

What is it that you don't like about the following pattern?

=2ETP
=2EI typename_t
Include
=2EIR <header.h> .
=2EIP
=2EEX
struct typename {
    // ...
}
=2EEE
=2EIP
Notes and commentary.

The above visually aligns everything by the type name with all the
material related to each type inset, which makes the page easy to scan.
Literal code is not filled, so code indentation is respected and (on
typesetters) the code be in a monospaced font so it will stand out and
align correctly.  You don't have to manage insets with .RS and .RE, and
you can still have as many paragraphs as you want with .IP.

I have some guesses as to what might be bothering you, but I don't want
to put words in your mouth, and my mails tend to run too long anwyay, so
I won't voice them right now.  :)

Regards,
Branden

--53ty2xfmph5ggknd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9xvYkACgkQ0Z6cfXEm
bc5Yhg/+PrsP67caorauhnq4HiVFtWIyzKcRyH2JSePnE/3QnzVf4/ZTqc6HXp6i
lhXZTZQvic3SqMDI0MRjhN4n9efJqtDF8NgjucA/b+NcOHEGI+HQx2WsIYw+3W5d
7PZMNefRpOV4fkYksi2MIMTqx6BOJJKfMNIvEDBGBo/YekPUl4P/lflLMfXIXehv
AQdZD6vuGXaeP1hD26ia+tAblGlCGnWqFcp5yNrKig18BHQ5EecWC0kxnKhIxTza
hd7aUKmF3XqYDrjJEsY/EZH0IWKIXbXY6irBGRYbd4kT3FVg27OGZR1XmXUoA846
EhA0LpJ031WAVJxL3pEH+p96K/wgQL+sDiYdj4x5ITfjxW3Ut/BzjdhIDRS4iOAT
oESdE/0/u/LzVR1KLQl26OKmx3j7QIrzXoRmerd+L3vYtAVdmYfzjaq2eHthfK31
7fzCQsV6kQDYZo4r8RVhdrS7YqYifeElMaFhH8joDhdOscsuYW+lf8O5+GxkcBEj
N9qswcjYVysnj7iL5/pimR9Mt+AdrnSong8LnclM/5KhvLhdrXGxu7hrZh3nIYgC
k0OXEItAoLd0OSe9rxKxc8GqvXZWN+7eTDZp6Ej08Z3Mq6ldMD28bBDWDkzmTi7X
FdrSCzHRkqwNdPj1PTNUbnHIRJzYmhqc/RYHaPlkSBAk14jY8ak=
=sc7P
-----END PGP SIGNATURE-----

--53ty2xfmph5ggknd--
