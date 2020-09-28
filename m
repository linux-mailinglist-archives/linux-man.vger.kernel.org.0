Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21B2327AEA4
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:06:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726393AbgI1NGF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:06:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726328AbgI1NGF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:06:05 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AC41C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:06:05 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id l126so983966pfd.5
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0c/K5gLMsR915xLwKal5SS5OAXzOHx9Zm/qGb8BfpXA=;
        b=HI2RYOmMkVboqZbJ0Mn8DavBlnikErlYH7X6I/3I0r3XAsYxbFAVUlTTDlY9vstRAd
         viqJ+7tDOq2i1YlK5KySIuTLBWEo7/nMoOeV/CGPpZiia5hUwQmRS2LuoBi5DD0cBbaE
         1z5qE5Hr4j4CYTnjOn2yRpMwSMC1BPylL1JZA5f5WB1X+mhSMKYQW68NGExiSRbZ+O4P
         pSHeGJJVmRQFQ6AdObo4cg68R/gOPZjL1TskDOH1qewEdkvw1aM8tMwT2/xBDDz76tJy
         4VpEeFi2SuTi7gT+z/f7XTPuFakljNgLDDA4Zb6M9Fj1zOeWrDEIkVpe6lnainKE56qh
         PZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0c/K5gLMsR915xLwKal5SS5OAXzOHx9Zm/qGb8BfpXA=;
        b=M0tfJaGyb5mRiWWFwQtey8M3l4PskZPRJpOSLQXNuoiqpCiqvKwMAJ/cKX1FJpRhGC
         HfQuLUxnAttwp1wDSFcgtBbx+G7oYDDkBNQNEYxsB+jH7P+LU/Zkw3sGcDkrYb7eCxOk
         AYK+Y3lp1D47bHU9owlkMwQ3y4XoT+SnAgqSAI8thfDl0EMFe4PXEzE/GJ4q+iIzcG27
         U+YGehKPtw0hzbWSw63imcLDexBoNAvdeHUlU44XmYjM/VXHRm3vGWsLuuETDISoMcd9
         hp+leo3XIJqo0ZmKRQucWmCEwMC2qdtPrW+YWm8PGiNF+HPyE2qIY2rgd5a7oI4J0cPu
         pUaQ==
X-Gm-Message-State: AOAM5331GrhYHIuoYXhVPCplOu5NQ0vVQZnHYknoQqZCExk+Or8gGnmn
        016vGLacFvEyoKWPdBTFjfg=
X-Google-Smtp-Source: ABdhPJwFXsvENaRm9SCNUcymGVUTzKGEP191MwYqGEqYOx9jxBFB1YMbMDqm+ZlCJcTAHPgjNdgW1g==
X-Received: by 2002:a17:902:d346:b029:d2:8cdd:d8d2 with SMTP id l6-20020a170902d346b02900d28cddd8d2mr1552906plk.34.1601298364588;
        Mon, 28 Sep 2020 06:06:04 -0700 (PDT)
Received: from localhost.localdomain ([1.129.173.239])
        by smtp.gmail.com with ESMTPSA id i62sm1647948pfe.140.2020.09.28.06.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 06:06:04 -0700 (PDT)
Date:   Mon, 28 Sep 2020 23:06:00 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
Message-ID: <20200928130558.4qi6jitfwxg6ccm7@localhost.localdomain>
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ag77ef2jwulb5lr3"
Content-Disposition: inline
In-Reply-To: <20200928090322.2058-1-colomar.6.4.3@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ag77ef2jwulb5lr3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex!

At 2020-09-28T11:03:23+0200, Alejandro Colomar wrote:
> Normally, text under a section header starts in the next line after
> the header, without a blank line.  Follow that pattern.

I think your terminology could confuse some people.  A section heading
in a man page is what is typeset by the .SH macro.  For instance, ".SH
Name", ".SH See also", and so forth[1].

In the below, "aiocb" (in italics) is properly termed a "paragraph tag",
hence the mnemonic for the macro right before it: "TP" for "tagged
paragraph".

Just FYI.

[...]
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 361e8d411..ff0403df9 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -66,7 +66,7 @@ system_data_types \- overview of system data types
>  .TP
>  .I aiocb
>  .RS
> -.PP
> +.br
>  Include:
>  .IR <aio.h> .
>  .PP
> @@ -101,7 +101,7 @@ See also:

Regards,
Branden

[1] Often section headings are written in full capitals in man page
source documents, which loses information.  The next release of groff
will feature support for mixed-case section headings with optional
full-caps rendering under user control.

--ag77ef2jwulb5lr3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9x37YACgkQ0Z6cfXEm
bc6how/+IK0J+zI5Joy+Pum6NHHEqjvROFbIapQVpZFUUo1WFRvDX0ozExA/Hd5Y
TSK1x34TkgMWfp+al+0nR25JcPaD48RtaKsRTtn/yWj01FpJmuga4lws05uUsE/C
Sk5aWnLxtC9L8J1lZPmkrXSuNXWwHWYmaHF9/BKzsNxFr807idg6uBLbNjQjztaP
XQK/3TBhXLeG8t59zrAwMNchqRpzGSkb9pVdDKQUjrhc4//17ainUT9BrLPZPJRM
ByEujq7qWz1gIxcto4xfAzdEHTdcJsYXjvuHO3DKtZQCR1+ggoVjFCWfF3f+eMLJ
GyW3JHo0+g7ih89fnZmC1OTkgYn1oJ7RE/MQJ69PHgXK1a3aFfMPrBPRzf0CKK8A
2oNswMbP2MSBm2HOoNg/E3i0dTxebA98MU2iHMYl2r1r7DJbaXrR21YRqkCwnh6Z
wrydWWWiokwgqTmRG2HtmFv18wB/pTxdqcOWsahV9p6rNAXH3VwkXEKSrahmS+/t
WKrdobITt4l/+C9DM9vt0K85VYPmEG81wa+8P/qe2YtRLi3j4JiLG7sKCF/fnto9
unK4NAp8MM9V0O/2seCKWkUz87i0pghlywhEshUlHVGrlsn1+dT8qafjO0XtSiWp
kuXBVfdK8+/PJ29LMUvbEW+iX8hOGgc9fvokWbEk3aCtFDarsVQ=
=MEds
-----END PGP SIGNATURE-----

--ag77ef2jwulb5lr3--
