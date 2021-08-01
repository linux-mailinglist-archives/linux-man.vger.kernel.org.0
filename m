Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A7CA3DCB6B
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 13:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbhHALmL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 07:42:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHALmL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 07:42:11 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E88AC06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 04:42:02 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id o44-20020a17090a0a2fb0290176ca3e5a2fso20885714pjo.1
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 04:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8wz0iqlcnGgxlISuFpPcdzviHwQEiG1YUSjZcQfpkyI=;
        b=hFQdNCYQS8GKfXn4/Fr75GXRu5UqZvLMH3sXGiP3/vDIU5eE8PyKs3YwtUwfPqoRaR
         ggdC4aPaVdzqNfuXoEejTS/xvELHbYCps4QyuIsV8b0mIhevCU6ATj5FfK/sMDtllRKy
         9ALssP8HqN+Bd6WWQbPWKoVrBXBzhEinY8iJi5c2G0ndIWZWvXxmftJScapPUy6tf5eH
         YjywfeX8EFUSt71lWZ43LSaTl5t3qjybxzlUZyqfHtkUNkBvm7bEud0WQJK6L5/exl16
         BGUOWrSm8hiZkZf7a6t6KTUwUyBY/8ttcZWKqqx3AfmgoAWj2XZgwVGEjdwgpTUYi+Pu
         YgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8wz0iqlcnGgxlISuFpPcdzviHwQEiG1YUSjZcQfpkyI=;
        b=l2OxIj2EKPXYXMtJx8NEBSDHaVKs1MFn2wnRhoBzPlaCmgwO+OXTy1AQw4+egFU334
         BycqUTJ3eul7Ow88JMaJ5AHOR1Hu34yv5YqviG5nH6jfSO+sm3JOP4xTyWlOSOeQKlHY
         x5DR97QEE/MpL83u8+Jh1+aNJLa4BNvNrlCkzFzx/1pX3rUHcJm+QERa+cNSfcLtly2H
         FP8PtZysUgPh29p5OziYH70LmoHfDBtn+nI10KkzItSUbxLf54V6cdTb3bqo0sRSehRP
         GS+H/H7x1jgsENpfZfn5OcuJdFzerXSsEfl+P+ysF3FYbPPelQ7QbqW2jJmdm1cB9IPY
         cvNw==
X-Gm-Message-State: AOAM530VikXqfntL172tALkzr+cn05bpRXaBMr2oqW1EK1cSKMhQ4y40
        g5CiHaVv9CwaPPkvwxjuniY=
X-Google-Smtp-Source: ABdhPJwBgPKdCzP4DYQxFXcQYUdeAIir0EuVdIBFjrZTfw4A8+4thgjhPz5RFo4PEbKVqkFicvwKHQ==
X-Received: by 2002:a17:90a:2a45:: with SMTP id d5mr12781890pjg.122.1627818122095;
        Sun, 01 Aug 2021 04:42:02 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id mr18sm7532417pjb.39.2021.08.01.04.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 04:42:01 -0700 (PDT)
Date:   Sun, 1 Aug 2021 21:41:57 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
Message-ID: <20210801114156.w3hmedegg5574zho@localhost.localdomain>
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
 <233dc372-453f-713e-13ef-cb59721e806a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="72i67eqqvagoyioc"
Content-Disposition: inline
In-Reply-To: <233dc372-453f-713e-13ef-cb59721e806a@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--72i67eqqvagoyioc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-08-01T12:49:39+0200, Alejandro Colomar (man-pages) wrote:
> $ apt-file find git-send-email
> git-doc: /usr/share/doc/git-doc/git-send-email.html
> git-doc: /usr/share/doc/git-doc/git-send-email.txt
> git-email: /usr/lib/git-core/git-send-email
> git-email: /usr/share/man/man1/git-send-email.1.gz
>=20
> You should install git-email if you're on Debian.

Evidently!  Good grief, why is that split off?  <grumble>

> apt-cache also helps if you don't know the exact name of the
> git-send-email file:

Yup, it was more like I did not even imagine that the package had been
split up like that.  I thought there must be a licensing problem or
something.

> > I did a web search and did not find any reports that NeoMutt does
> > violence to Git-formatted patches.  Perhaps it is GMail's fault?  (I
> > use its SMPTS server to send mail.)  Does someone on this list have
> > experience with this MUA and/or provider?  Is there a trick?
>=20
> I also use gmail, so their servers shouldn't cause any errors, I
> guess.  But I'm no expert on emailing.

Damn.  I really like GPG-signing my outbound mails, especially including
patches.  I try to exemplify the audit trails I advocate.

> [sendemail]
> 	smtpuser =3D alx.manpages
> 	smtpserver =3D smtp.googlemail.com
> 	smtpencryption =3D tls
> 	smtpserverport =3D 587
> 	smtpPass =3D my_password_goes_here

Thanks!  Without some NeoMutt help, it looks like this is my route
forward.

Regards,
Branden

--72i67eqqvagoyioc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGiIQACgkQ0Z6cfXEm
bc7DJQ//R4XTawslDxNNbptajw6XjhPOh4Y4KgljE8tkMG5onF3fQgp9unGgrD0e
CC07ATFF/Omw1JR98T1wnPHylK5VeU/BkB0Zw7uJC+esYSd1VVuqXHfAGw0AAxvy
qjN1PKh9qsjSeXMTLGGyDQ1ZWF7bXGCkYjLG9IRHc60ZmWllJD9aYftHwM9+qGye
yLoe15zLxs6h9qwFLYeMZygXe4wFfQxMErTk4Qdl0XecdHWIdWgb3XdUxfUoJ6fY
LeEcvTdHCRUcwEChNTMQC5UTXA7fBbDqZwXnjZO2BJpv3O39N99ig+VWLnuI8GDu
GmplviUEIIQI0csHVCvSwqICH+z7HhNLvYK16AAhDnGfqazmUXLlgCDdCeL0Pntr
SEgsxOyf0hvlfOnHTYwGnJbSupTEkRtKDpOkkvWE2/ZbxdY0HSQ8CgsMfad5ceVv
tFZdiiv1sZyhIks+ioBx1KkeyLLFySLbZ+EUUy+yTGCYVaAt5X3xdi+VEEnlEEcw
AWff2k6yRwgz8cOA8qEijbyY6NXjSfEsL4pVzq6u6dZu+hbbEKhP0hhg3knId8gO
9HsyMZ1vLRMd+YyTDaDDem1X06nzWbGAW+zwDoVa8RgKduqkLo3RdI+lc1Ubf7fB
2xSPkTA+qXQtCjAq4+zyRNRXsBCZ9gNujkt85wkwZF8j7LIT+0o=
=vcxN
-----END PGP SIGNATURE-----

--72i67eqqvagoyioc--
