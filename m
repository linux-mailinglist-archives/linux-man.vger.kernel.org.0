Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC1D821AF3
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2019 17:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728791AbfEQPvF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 May 2019 11:51:05 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:34040 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728551AbfEQPvF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 May 2019 11:51:05 -0400
Received: by mail-pl1-f196.google.com with SMTP id w7so3544418plz.1
        for <linux-man@vger.kernel.org>; Fri, 17 May 2019 08:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xUACVjuXS2v/ugMMxWPc1cxa10MCmCKeuu2b+NUFiAE=;
        b=rkKhq5Cavc2eqSTCi0ITkuK4VlOldYAErxdy555IXA9ausWXh8RsQTskjp8SctUT3X
         SRC1z/eH67KcF+Iuqsnsg9772qOH4umKAa/wf3qAeaGdOlo3UtaF2StN5Tp5PaV9HxZz
         wIGUAtuPavSou+qPq69kt5jN3JYBW8hlGszh+y0X+hGoVqockDAVvewFd+OsJGNzV2uS
         x288RM72LN0cy+wpHZdupYtSqdiAqtxlD8ImR66ql1cO9VdBPDq75KB44txyiSaswRHo
         YSh04PynLW5FqPVgGGrpAyXT7Oecmj8yCJ6cvX0+U1z3afPFHaSkREO4s7Svo/W6YlTx
         WeXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xUACVjuXS2v/ugMMxWPc1cxa10MCmCKeuu2b+NUFiAE=;
        b=IQJKBiuLS1A3jilRCU/4OZ1c65dPwfhQ1EC2OdJG4AJlLiRSwDnHJq9Ytx7iEzdtuc
         DdtfHLcLyG/uU3KBCSUQqFbWEbnNO3r+PNTQHX2emRVhd/GIfBAMThPleKpztXvmsyKh
         Ri/gg/8hNTez8i+6kdsXkICf1Zwn4VgZzQjqs5tReKXnhBm98m5UOun3KuHJ6d8aNQ9l
         PepU04Qi3Zi2RoZPsFg2K0//hjeVh+iH/+P2U3GN/LuX3d+PYnM8yHGdOSdm1bXA4BNV
         z51WLsc/LIazB7ghK2Q4RyUCnVTEeS6me8MlAJBUNY/vq0mhq0nUJEXUyv/teC5DNHNy
         vXJw==
X-Gm-Message-State: APjAAAWZye7YF1a2U8RU7pyslHg1MS19Afmc2WOgYHdwAejYHPLUeeSl
        C4wPygmQjidgXb5U4JqAnNv93wQw
X-Google-Smtp-Source: APXvYqzOq8qHCZVIKQUNC1xRfaFcoUFgUsuPe5FbPbUnVaf8I08BJLcfNwqOkAeAyCHmXzQ7asNSBw==
X-Received: by 2002:a17:902:7682:: with SMTP id m2mr56863783pll.68.1558108265025;
        Fri, 17 May 2019 08:51:05 -0700 (PDT)
Received: from localhost.localdomain ([1.129.249.134])
        by smtp.gmail.com with ESMTPSA id q142sm7268649pfc.27.2019.05.17.08.51.02
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 17 May 2019 08:51:04 -0700 (PDT)
Date:   Sat, 18 May 2019 01:51:00 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
Message-ID: <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
 <8736liit24.fsf@oldenburg2.str.redhat.com>
 <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
 <87y335m6fq.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pqk57mfgj3dnyq2e"
Content-Disposition: inline
In-Reply-To: <87y335m6fq.fsf@oldenburg2.str.redhat.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pqk57mfgj3dnyq2e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2019-05-17T17:44:41+0200, Florian Weimer wrote:
> I'm pretty sure Debian 10 does not use glibc 2.28.

No, and for that matter I can't be sure that the next release of glibc
will be numbered 2.30.  :)

> My point is that the glibc change will get backported, but any
> man-pages change will not, so it will be quite some time until the
> latter shows up on developer workstations.  And due to glibc
> backporting, the version information there will be misleading.

Backports and distributor patches are a fact of life in the present
ecosystem, but an upstream version still communicates valuable
information.  My opinion.

What would you prefer?  That the man page not document the bug at all?
Was it a mistake in your view to have added the information about the
bug to the man page in the first place?

Regards,
Branden

--pqk57mfgj3dnyq2e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAlze2FkACgkQ0Z6cfXEm
bc5iPg//aSkGK+LwOscXbNlCHjPYuSj/PdlPeNIuSiUcSMFhqUopAO/XAwjdFxnz
1sxtC2M3Wn0Y52c2DE3rDTP4FzP9hPCitzHpzULaS+vDqt61HLHpHYeM68D85C/5
efaBoi3ZNClbUq7Hj/fqy6snnlen5/cyNAh9EeDoS10e8k9jKVCpgsHG92upXoao
yUiGAr2z4UGfXigLWKJFnpdSUTiE7yI35z8/lwV2NRws9NZxjJTkVWhu91LJdl+U
iPkcDpZ8YT5ZqG0nBmlo57otQqyi1LjfjhYhjeg1xMWRFyJZKIYEJxTXfRNkYIR2
lmP77XjHWoJGUjrHNXt48HzyGavUn9sp62DGsZebBJR2sevXX4VCl4uJlgQ/ZL+o
CLfQFDBE2eRoATMlkDkPMbYVQiLwjkoIsCmtVvkXLnNwqx61OEVMCtBJqPlLileu
Z8hQz2K98lHUeYZYfv530YHM71jxaCV3MEl11dYiRiIoS19lUcgQswfrm+KCc/Vp
/LbErMShwU11fKQyRDssaYIwAokE8C9dzMWpWrdImTr1AS9D6PdQYnZGrtd8Brem
O1qqpw8l2uJCQcO0o+stzzEJhA51S6Zn2hQcJZmOQKPuKz2Prt+O2wJUw6Yk/bff
VoZLywLSQFpSk8fZUxDh/glyCunJL7ny75tziUkPumxlmGyhIfg=
=ECQO
-----END PGP SIGNATURE-----

--pqk57mfgj3dnyq2e--
