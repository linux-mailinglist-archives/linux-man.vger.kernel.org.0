Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 926E63822E3
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 04:50:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229661AbhEQCvp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 May 2021 22:51:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233907AbhEQCvp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 May 2021 22:51:45 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B43FC061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 19:50:29 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id t4so2319677plc.6
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 19:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+7UamVS59Z36MWYzx4Xo2ITRe1J2M6qBRY7dB2Z5QgU=;
        b=gJKfJvFrVLNze0cEobM+kaSHUDmDbF4soR3H5aqYRAAjELI4uVEiCXakoEkyQK2d5R
         yvw0Athf4N12rJYtztlxnY9nacWXSl+IYb6KeHgd36RHcIgyfgJjsYsUKrzAL7Rwf/LB
         dqjS1Jwa3TtYmhJj8y1eKUCr0Ggtf5t8Oe+G0QBI9CKyy9mFD3VV0uYZ+V8ZmWwBLCqc
         RiObsrVFTCr63p2r32i52GeXMChDgYc7Ku+xHmI4iSTixozl1/WOzW2Q/6Un/Twck4kx
         OqbqNrmBbECnRlPUGj4GBt19k9Xw3eXtXZsP0nVpI/AFplV4YsNKL9U8Gvu1Fat698VX
         RBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+7UamVS59Z36MWYzx4Xo2ITRe1J2M6qBRY7dB2Z5QgU=;
        b=ZfFdM7yYef+uiMkrvbCfRrqclIp/l4uoriJ+0W0t0LEfBNDfdE9+HjfMLLUHV0GkJw
         LuFd3lswld72j1BCLc2vB4jB6McwIgJRSOL8BfOzIKcnLvlr5qI3ElTg6DPqJz/pcBBA
         aL7O8Qt9BpUa8kx63QTjHJh0wnigZU7Y06+ePnqvg9zLEDouqU/4LatkoNMNjLatAPzP
         kFmKtKZRtDWKowYVoKX98kfGplfHaP6v14KtHg5DaD8kVdx8bOIJ4QooeLzComVj99Yk
         KJ0usUS0cJfeFIEgVpcdgbNosNErfAIjn8RbExnb19JWvjvlV8yq9DLF6/0KQGcJP6Me
         szmw==
X-Gm-Message-State: AOAM533OtadE7suwG6MYEDBWSkBBWNrJDQbsQuy82pEORX85mc7uJp5H
        eTelYvILykv/9X0znUMyQig=
X-Google-Smtp-Source: ABdhPJxEmYMKw0sQR7e5KBRtsoAl0WaLJQML5JYqDltUWPCexzZ+x20BzJjGj6sxGW2lRF+xUrldrQ==
X-Received: by 2002:a17:902:9342:b029:f0:cc10:3f with SMTP id g2-20020a1709029342b02900f0cc10003fmr7645151plp.72.1621219828611;
        Sun, 16 May 2021 19:50:28 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.123])
        by smtp.gmail.com with ESMTPSA id 63sm378975pfz.26.2021.05.16.19.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 19:50:28 -0700 (PDT)
Date:   Mon, 17 May 2021 12:50:24 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     groff@gnu.org, linux-man@vger.kernel.org
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: getting more out of man pages with less(1) (was: [bug #59962]
 soelim(1) man page uses pic diagram--should it?)
Message-ID: <20210517025022.wgjbt6esup7crgbo@localhost.localdomain>
References: <CACRhBXNqafUZm_Tk4+GyK4hrEnmS8F_e=s_kwVMeX0utvOHkzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gqau3j4qas3jj6cy"
Content-Disposition: inline
In-Reply-To: <CACRhBXNqafUZm_Tk4+GyK4hrEnmS8F_e=s_kwVMeX0utvOHkzQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gqau3j4qas3jj6cy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[looping in linux-man@ because issues of user education and topics that
fall between project/man page stools come up below]

At 2021-05-16T20:29:30-0500, Dave Kemper wrote:
> This stuff about less(1) is only tangential to groff, but it did come
> up in the context of viewing man pages, so I'm keeping the groff list
> in the cc.

Good idea.  I've further changed the Subject: to reflect the flow of the
discussion.

> On 5/12/21, G. Branden Robinson <g.branden.robinson@gmail.com> wrote:
> > One thing I would mention is that less(1) supports regex searches
> > within its buffer.  On my system, the searches are even
> > case-insensitive by default if the search pattern is all lowercase,
> > and not otherwise.
>=20
> less's default is for searches to be case-sensitive.  Its -i option
> (which can be given on the command line or while less is running) is
> what activates the behavior described above.  A user or a distro might
> make -i the default in their environment (I do) through the $LESS
> environment variable or an alias, but that isn't less's out-of-the-box
> behavior.

On my Debian buster-based system, less(1) behaves that way, but $LESS is
not defined in my environment and I don't have a shell alias or function
set up.  Checking the source package, I don't see patches to turn -i on
by default.  Baffling!

> > In fact, to leap among sections you can do
> >
> > /^[a-z]
> >
> > regardless of the lettercase convention, and after doing the above
> > once you can type simply
> >
> > /
> >
> > to repeat the search or
> >
> > ?
> >
> > to repeat it in the backwards direction.
>=20
> Or to save yourself a keypress (since those methods require a "Return"
> after the "/" or "?") you can use "n" and "N" respectively.  Longtime
> vi users will do this without even thinking about it.

Yup, you caught me.  :D

I don't think it's ever too soon to teach a user who has seen man pages
how to get more out of them, and that includes the pager interface.
It's frustrating because man(1), less(1), and man(7), formally
considered, can all disclaim responsibility for communicating this
knowledge.  less(1) can page all sorts of text files, not just man
pages, and its own man page is huge and talks about all kinds of stuff.
man(1) is also big, and that program definitely is not the pager.
man(7) documents the macro package[1], which is a man page _writer's_
interface, not primarily one for the reader.

I find myself wishing that intro(1) from the Linux man-pages project
said more about this, either directly in that page or maybe in the
man(7) they provide, with a conspicuous pointer there from the former.

Maybe Michael or Alejandro can advise regarding where they think a good
place for a man page utilization tutorial would be.

I also wonder if the pager wars are basically over and less(1) won them.
I haven't heard anyone mention most(1) in a long time[2], and the, uh,
simple elegance of more(1)'s inability to seek its stream (meaning: no
backwards searching) seems to have driven many people to less(1) even if
they have reservations about the length of its feature list.

Regards,
Branden

[1] Michael Kerrisk can correct me, I hope, but as far as I know the
    Linux man-pages man(7) page arose because, back in the '90s, the GNU
    roff project refused to supply one, in keeping with the GNU "no
    documentation at all if not Texinfo" philosophy--Susan G.  Kleinmann
    of Debian had to write one, which I guess escaped the notice of the
    (Red Hat-using?) man-pages maintainer(s) of the time.  By 1999, the
    rigor of groff's fealty to that principle had slackened, and,
    judging by groff's CVS-to-Git history, it looks like I can credit
    Werner Lemberg with adopting and revising her work as groff_man(7).

[2] a fate that seems to have inexorably claimed any project that
    hitched its horses to S-Lang's wagon

--gqau3j4qas3jj6cy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmCh2ckACgkQ0Z6cfXEm
bc6dJw/+IkbxM9+O5DmEpkwGPj/qB5oTzNCpGhaLvKuftmfIw7XfwAjcwVDgnegq
hi5tf0zNLzt0nsDlbS8JQftaOK1iGLy5U9uz7iSOH/tUENCtATfPCaTVACKfIr9z
BxTDF94B5sz30ObpM5porhHfRON4ZOjsghVEpXSNYtk3nroxp4AHLY/GAcTV3N0H
VQ/k7jo69cpACaTeYRdYr/MZ6LlP7+t3e0BND49HF1FELUamyKQlqePpLFpkUQQV
ySBKIlKfrmAWjCG7QmgoJq9G8HhNIAxI0Mnz8hd6Sy+8diLj0aUSzk44p7Y5fUjC
cRok+ZY5IDiTYStDrWuuIi9nAiAqftjr5gkEZxjH+QAvlkwwqTrvEHjaGtzx1fB8
4c013khApBY6isVR/qyOWdvNkpVQhH/u0GcD3iqkiAf7I+biWojLRce1OlrTZu1c
m1eY9F1LSDl7G4PTmvPUvVXPNQ98sDbeoHqPIBwtfJc636+jxqseWfO4PMF0vctB
s/nj9/WpgJSxRj6WIsHrhqJ+W7LzwYWovben2AqqQYGEe8StuDFqrPEPtmeajhSO
5ra68qsSnBfDRdWh+hLGKDvtOPbFr1yeXUBEKC57///6iDLp0wlrSSu41tvVP/B+
+JAIqlSHDxC5ujeEKwTkF4aNt8E8Y62rdOoJdi6P+1Q9nVoUUeI=
=8YHV
-----END PGP SIGNATURE-----

--gqau3j4qas3jj6cy--
