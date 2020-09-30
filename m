Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE7427E900
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 14:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725776AbgI3MyY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 08:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729737AbgI3MyY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 08:54:24 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D963CC061755
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 05:54:23 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id f1so978371plo.13
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 05:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iEsyh8GHxeu44vtzBBR3NlkwMw0Z1G8PerbllmZFH94=;
        b=Kcvz/AjKFRqerKGMz94QvGEtiNVFBztNsWhl6zhhK6x3xPAAedw5Spg8n20BfNhXPT
         Eiom6xu9db68vXWp2SH/1MTg+iJhDDd/HP6pBjqcs4nSHvhEcd3r72buoGtB2x1UoaQg
         yEWsHcNYTMoE3nxbImmURGnqjvI/rrRQDeuxn5HJ+rghU6lfbJaP+L4yv/xqWsdYyc2k
         RSUkANYp1C3s7r8QJ7IrcdqXDDQUHGJVnHj0/Ci9LwTnnK/Ut9RZyd1DA4t6Qr4Fvy/2
         2c+Z3rmCVr9T16OM/VVrvPsojEANdjG3rTj1vfACL79fqn/c7+lM6XP0CYrz2dThdR09
         3Ocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iEsyh8GHxeu44vtzBBR3NlkwMw0Z1G8PerbllmZFH94=;
        b=erWFsKSCdps94xKTjC23BI3HMgngZHPaVOMTjVzDFJb0fNzfonMbzvBvtqHQ8RBvo0
         7Ul12herJbdfHtgVdDKMWJSUW9iLMIF+TfY3pGJ2X8P3WRmpWO6FZ77mq7PDUmFqeC0g
         KJtrrSaAVrCqu86nPaWHd1T1W54ZgodddlULLsfCC1R8xF/nJrqjnAPd09yFy5/7jG0n
         wHQAClu972x60hEOejUXCg82PBi1n8HTuN3tNzxCtI1YgApUeDdMARZxjkUJTXXSKtoY
         nyBLjmKQCBUMhTaFZI4zXj3oWIXvQlNF5rXR+YB7QA2orWK2LpS4lZNNeG5eyPbmgvUx
         G3mQ==
X-Gm-Message-State: AOAM5330FL/gankmxNGysoFSD34bEAqHieQ9X0st1Syd2VVtFcgFYPOM
        m9DYuY7fxf1ALgMhcP0kw9c=
X-Google-Smtp-Source: ABdhPJxZ7Z23bWr2jER4tAp12IbkTLSF42iyh3vNdjiFzt1S3r8+OA1RD+vyz+geFoFiDYveOpUsxQ==
X-Received: by 2002:a17:90a:e697:: with SMTP id s23mr2457874pjy.175.1601470463289;
        Wed, 30 Sep 2020 05:54:23 -0700 (PDT)
Received: from localhost.localdomain ([1.129.174.186])
        by smtp.gmail.com with ESMTPSA id r14sm2254502pgm.7.2020.09.30.05.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 05:54:22 -0700 (PDT)
Date:   Wed, 30 Sep 2020 22:54:19 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: man-pages.7: Simplify indentation of structure definitions,
 shell session logs, and so on
Message-ID: <20200930125417.ovlnfxhk5zgtuj46@localhost.localdomain>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
 <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
 <35b5a9ff-4133-8301-bb75-4b13f7861c9a@gmail.com>
 <20200930120242.vylnz5khajri5sz4@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zpgxcpifpydr5ebq"
Content-Disposition: inline
In-Reply-To: <20200930120242.vylnz5khajri5sz4@localhost.localdomain>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zpgxcpifpydr5ebq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2020-09-30T22:02:43+1000, G. Branden Robinson wrote:
> [...] you can call .RE [...] as ".RE 2" to say "go back two
> indentation levels"

Nope, that's wrong.  Forget I said that; I think I might now see
something I can further improve in the documentation.

You can see I'm still bedeviled by relative insets.  :-|

I tend to never use the argument to .RE; I just call .RE multiple times
to balance out my .RS calls, just like parentheses.  When I do that, I
don't get surprised.

> without having to track or remember any indentation measurements.

This part remains true.  :)

Regards,
Branden

--zpgxcpifpydr5ebq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl90f98ACgkQ0Z6cfXEm
bc5ONBAAg2SM0XL0ljnAXr0hY5A3KmadEq/NrH77b9YfdQI2zR4aYFAMueCtOI7r
r29NZtUpoMcxujilhbVyGYYUiTTUwOQDfZ+j3zhWlfo6bc1VAD2u6593lCgntUBP
pNxFl3arnBsujzFonhzoSJbTFxnyr5kVfV/5qGcMddKGlKQI9BLmtUXN3ac6c/7C
x0B2FthXhZ1DLox18OQs4D8Q8xgrXgrbzNyog26uXT7JlvmdP4fLRM3NeA6Hq2ZS
IpbqzQ0VYD4QuGRCRpab35LuhTdynHj3SE09wSBLtFaBfTqy7QuASKbem64c9gu2
Ida9wBKcfc77/UnwA7fCl3Ome9DU3U6zOf6ty1egYDkEEA3SOgveNxyr4bLi9pO3
tNXrsGYsgnYZgIE0FhYEmjuaTbRB5ekNWvvwMOFXteZgJmvTd6/7rtAX3S+rR8HV
Nf5SI1DgpgM7vU//ZqhpMICWVDn7ecYkBWQWpzB4jmIQDtQcOCIo+yCL8o0pM9KA
Xz+veGmMvjwN6mmrMn0Y9HCEAvZKSRGLVkrFYL56/WNbKwQnq1dDcERXpzNl0Xue
06KmUlaTVj68anhDE3SKgg+xUnJmPq1MUF2BcMCdQ6H5PFkQJMkSgxKXRtjqpFuN
3xbucDYUtM+OcoVgxz0BfvBHxAUL2f2NQyZmBupWN1SCE3X0aoA=
=ByZ2
-----END PGP SIGNATURE-----

--zpgxcpifpydr5ebq--
