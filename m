Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F65622BABB
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 02:03:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728065AbgGXADZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Jul 2020 20:03:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727901AbgGXADZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Jul 2020 20:03:25 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E656CC0619D3
        for <linux-man@vger.kernel.org>; Thu, 23 Jul 2020 17:03:24 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id a14so4044903pfi.2
        for <linux-man@vger.kernel.org>; Thu, 23 Jul 2020 17:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+AwrLkl0Hy7XxNddsuwZDGlNwv0fNH7fIrCyYj9C4i4=;
        b=Q62yL+C6Q6ZflhUBBxGFhlxDfLSgKEmx1+PHBkLsQl3X3PAWjy0yzkJLaGhvww7ybf
         Irs9sHwTM1siS4Sie6GLaYMMDXGQEJjNL88bteN3Spj7I06+QqaFaQbDThvCz+5mn/Mu
         AsWxfInopFWYUc1y1ZeEMGbUH0xw9wxa/o687hbOx0Yb6WQM19Q7PoPN2DB3KWIQQG+U
         rOZ6UXlpDRnO05q0gAMB7+a2TPOO6Ea6CVTqI6lhprhjDRHttI/asB3mfOcYQ9zx7yfm
         X48lXxoWHIImu0/WKXdFCs93cdAn7jH6fldpqvlGO2cgcv+m9HvLl+swdtl1iBhkoVQj
         zcpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+AwrLkl0Hy7XxNddsuwZDGlNwv0fNH7fIrCyYj9C4i4=;
        b=ZUkpT3Yr3L7oulMdNiWVSH7ZzwDjBaVrkGXvzr9GA4H8SW4n2aHMjE5S7GNS9CW0r2
         pX8KiIOwVXTO/NvOaZWBOcSN8iFsQgeM48TN5O+wgpsymHmk2okgSznDBsZ4oRzCxyyw
         VSMeWW2dzU/mMDSl1XUILKTHuVx5h+gyGIWEhiUM3ugeLXS8Dv1bvwkbOotg4IiKfyDw
         NeHbEGMnXChozMnQdNW6/MMhgO0IOPv0V8ld/gA+lqUa0Jd8ERhzxdjOcU3Gw4k8wXUu
         IZpndnFrgJwRDD4fb7vFvR87GB0nV/CBZrPdm4erI6OgSGGxBAMI3I3TfSi6Xhb4SvK+
         axYA==
X-Gm-Message-State: AOAM530NPe3WBMumVMRA3Ok8FAnuH5wQHpJALGclDegYRUluosukPPxX
        jLCTQX5t1YZyoI3fGVFX+aKuctSn
X-Google-Smtp-Source: ABdhPJwB3mkLYwxIvoFdRD/zyj6M/vaKb6ii5tS0zCLzCr3NDA+2tyMEdjs6nWNehixuu0UAUN3jOQ==
X-Received: by 2002:a63:1c61:: with SMTP id c33mr6326787pgm.350.1595549003793;
        Thu, 23 Jul 2020 17:03:23 -0700 (PDT)
Received: from localhost.localdomain ([1.129.255.227])
        by smtp.gmail.com with ESMTPSA id y63sm3949964pgb.49.2020.07.23.17.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 17:03:22 -0700 (PDT)
Date:   Fri, 24 Jul 2020 10:03:17 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] drop spurious t comment header
Message-ID: <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
References: <20200723215333.13779-1-vapier@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rqaioz3sr5v2mn7j"
Content-Disposition: inline
In-Reply-To: <20200723215333.13779-1-vapier@gentoo.org>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rqaioz3sr5v2mn7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-07-23T17:53:33-0400, Mike Frysinger wrote:
> From: Mike Frysinger <vapier@chromium.org>
>=20
> A bunch of pages have this random comment at the start of its header,
> but most do not.  Just trim it everywhere.

It's pretty misleading to call it "random"; it is a hint to the man
program to preprocess the man page text through tbl.

This is documented in subsection "Interaction with preprocessors" of
groff_man(5).

The patch itself might be fine; the first couple of pages it alters
indeed use no tables, according to the check I ran:
	grep -l '^\.\s*TS' man[1-8]/*

=2E..but the comment is certainly not meaningless noise, which is what
"random" suggests, and I would not characterize the change this in a
commit message.

Regards,
Branden

--rqaioz3sr5v2mn7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl8aJSkACgkQ0Z6cfXEm
bc5FWg/+NwAY8q946x4tupU8W3cMs3dtly5CATZ/LT8uvvnvskIutiiuBLdnaEQu
8+3f1n21qiM5232kOaezjfw+4C5eNCWbifDsLKxwvCCNQolzp4wazWVDJu92djQu
tMCfxpOAh70+VyOhYH8214It0XSC6xr/xHlJOj2MJahRi+r+CDu5wo+s5uH6rWin
PhoyXtF+1AjGqqrW1+rw1wr81XMn5aybK/HGuPYIYmLph1xRNuALhxTsJTDGYEUO
CffhwERtDXIh3RNqnzJuy3LfksjQMalJL3bH0k7oOPoxn48x+4LB4mCDA0yNBxKK
glOecnVKTplgRvO+woVR/UdtIkPH9guRAeobxMM7xgbfc5+5BFP0ha+oUOgTUhtb
ZEor4OUT6NhLhufFkNJ441A3Q/se1qG25df7qAOvUqy/v33DI1R819iP7qm8/QrF
mIcU+R/lKzjZhh2Spt0190e0/cOmWQXmv8CqdskhwtnD4NsybjDR2QT4+8EZCiDM
e0eDaI5nzDd9/xIP16YCFncCH26CpAJ4yUqFDtRvDptzfYV/oHR/72CyDLoeoCFZ
PamBz7+qR/hBrc01MS7ErFFyO4++zQtb+iBhtDQBFRybOZsvCQimwktXpnKgBlLs
k9xAc0k9ndXshXX1S8MYbW+yU1/bgIXTVHW8R4OscbUbkmNgQwg=
=tTXV
-----END PGP SIGNATURE-----

--rqaioz3sr5v2mn7j--
