Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83C073669C7
	for <lists+linux-man@lfdr.de>; Wed, 21 Apr 2021 13:17:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235052AbhDULSS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Apr 2021 07:18:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234131AbhDULSR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Apr 2021 07:18:17 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A60C06174A
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 04:17:44 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id s22so8376170pgk.6
        for <linux-man@vger.kernel.org>; Wed, 21 Apr 2021 04:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k5PU94LPGj2tzpdMrXUrvG5gjJe2gbYodYDAeHiNCAY=;
        b=FmoUH4GY3dKzmr+hj0LkE0vjG94wiygIYsiuPNenBWju0OoOUECU5Nio2xiC8aaQfq
         DfPsIrqdd1I+b2i4dFSfFvtXrZ8P4lMcN3BIPu8XKYufMxIfVWZF+JVFdHiaK4GHsGF4
         dSuR6QwXrreRURanIth6lEuaKA3TGjfHIVEN7iurJRCuaHmT0fRmputSAYThF7cV+QEV
         awrUVFSeGSqw8vASpDYxDiUt2QbzpoUUd43O61cUfCBsYVH8EPPuQVCZmOd0IeSWPbMo
         diw3u9Qk71jfCjKIU9a8mMOq5qH7mITJlrxE/NnUwV9qvX8vNVramuYxWCoMyHvzUVfG
         ZLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k5PU94LPGj2tzpdMrXUrvG5gjJe2gbYodYDAeHiNCAY=;
        b=gll8AB1aw029LtmGCYM0mPvEKncmpRVddmAMpHvXqHKYjgV4apwLTJ6MMCibPnHmwa
         ddWzoAmtfZFw1c0cVXnurT9JcG9wfcfZymwTe1uurblCed0TJJ6WYiYQcFIyx+SovVOk
         +L34CM/C9GbigvmXdPHZLiyjrm3OfpveYCjrOpIBAdbZJxZzfm8i0e0vGmKixXJtqGKE
         htrcW1ElGIik4KTFrBR19mcUTxh0vkbQIXw3e+6Lg4BnFQOsOYy0RY8ZH5JnxhPjzufV
         KdrA47XV6EQfeWQGcmSufn64wo49GROeKcEFcg3MswoBnzAEsGLBPnckyhRDJMweiXci
         WTjQ==
X-Gm-Message-State: AOAM533xSvpXrH29BcNKzRk/UFjjEZjSO4CmubYCiDPNcwhR7lcP5Gss
        tubB40wvTiZ96VIm26ifyJSnXSAvSJU=
X-Google-Smtp-Source: ABdhPJzftBiP0B7SlFlm0oIEtN5BFZjLv78bhb52GVHMz/A67VzPpPR2+DH0vIDtSJ1oleZHMu9Yfg==
X-Received: by 2002:a63:2211:: with SMTP id i17mr8855172pgi.431.1619003864428;
        Wed, 21 Apr 2021 04:17:44 -0700 (PDT)
Received: from localhost.localdomain ([1.129.154.221])
        by smtp.gmail.com with ESMTPSA id z188sm1531922pgb.89.2021.04.21.04.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 04:17:44 -0700 (PDT)
Date:   Wed, 21 Apr 2021 21:17:39 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Does man7.org require customizations to groff?
Message-ID: <20210421111738.wprqquhpfylydw2c@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="oegatg4r3iqzf4ix"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oegatg4r3iqzf4ix
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Michael,

I've noticed that recently man7.org no longer seems to be hosting stock
versions of groff project man pages[1]; instead, it appears that some
kind of local changes are being applied and the pages regenerated.
Perhaps the changes are not to page text per se, but to a macro package.

This isn't a _problem_ (groff is free as in freedom!), but I am curious
about specifics of the changes you're making and wondering if there is
anything groff can be doing upstream to ease things on your side.

Can I help?

Regards,
Branden

[1] e.g., https://man7.org/linux/man-pages/man7/groff_man.7.html and
    scroll to the bottom for the left-hand page footer

--oegatg4r3iqzf4ix
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmCACcoACgkQ0Z6cfXEm
bc4SBxAAlVSM+QCCdMjvl0KpFn9qAOcYWOsS0daUVpMhbY3sVGLKIVElDXIPJAP3
7U8AHrlluGY2OXLAdFz3OSaFL3ILFTiHBWd335fPyO/MKwdHNVtEIwh6aJiWJFFT
5ICIfJ1IKG1P9eKtOuvdxdu6Bf+4QhAWm0d0N0SFxFKoDS0tWGMIRuhzXi1twNEZ
Rj1ANlS+sOEoMWk3cVNIzXHUqx7ft7X7Aw6HD9uzLfFfo/saDKJlmXAIGG9zpQo0
DCFx/1mkma7qvqW9aOl/Y3imNUMX7L9VgQgzaCEf7n1CozyM9VuN/VrhIFkkervI
iKBMLdrTyImc3r0y92iT6CywKY5w4f+MjSD8AS/X87D7LNzo3VM+0pDoY7/lQLnE
vFfqRMI1Y+8/GXRgekq65W0Mwz6QQoGJz23GqYxX32yhlrCYQeF5sQrQxih4j4rX
2rVFA/5I6144+or90dkn1YH7q1Nsr6fcCbicJS30JMJ6OC6xF0oTEXE4El5Y50kM
Iy2BC70sTa3toxfauI4d/krGondi818HINLHlXeeUe+jsjCh7Q1sBJve2Z6b+nmW
9EyBYzApN8mFvF8lMOJbYutja2Nr23lWf+bJakt4Aaj4KiDWxXjuaA/ZIEfUUO3/
N8+CxKP9otbrZ3OyvjqU01+hOX0LMX9LlxgpWgiP+rSBN3eORIc=
=YvRH
-----END PGP SIGNATURE-----

--oegatg4r3iqzf4ix--
