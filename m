Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73C155918A4
	for <lists+linux-man@lfdr.de>; Sat, 13 Aug 2022 06:23:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236627AbiHMEXR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Aug 2022 00:23:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230051AbiHMEXR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Aug 2022 00:23:17 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18BBBDE8E
        for <linux-man@vger.kernel.org>; Fri, 12 Aug 2022 21:23:16 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id w197so3202013oie.5
        for <linux-man@vger.kernel.org>; Fri, 12 Aug 2022 21:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=4FbRq4O0zwYGEzImA5RI4lWuGtvtap+lxUwAq/vgxWk=;
        b=AD0xYS9UXIlrobvBYQ2gmBcK+evuQ2pQK9jwEFqGYDZtJaC0+m+Bb8rnR0HrPcSpHH
         2aFKCTFKFzy2gk6KMgD68wfNPgzGcTwo3tFr/MRidfdsALqJuf5EwCPIhvU2DiETYJPc
         1pt0uVRwZKz/l1oRilwznyQ4l+nCL0aG+Dvzg/EuekeqKweBITPbnRaNXSsTuMYuZ7tI
         xIU8N/BhtKRzZIlo26zHmA97vH13d5xaKNC78HtcWf5x0ux76uzO5wCuLMcV0Aj4M1BM
         GqXee0CyFOBQJfquLoFJ5Xoeaba33o4vfjZKPbPwmAeqBr+3W+h0awnhMFj1/2YRahzv
         1rpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=4FbRq4O0zwYGEzImA5RI4lWuGtvtap+lxUwAq/vgxWk=;
        b=ainkfiE1CkDnv/1ru5S6FUFmQcZ+JjVzibNFh1pO4SEeR5G9FC42B2RLg/4AJKe52n
         uZ6Y4UwvUQF5rVuA5Y5NrKprcNdK7o9x+Tm/UPsxVs6INOKqQyiq+kcOq03JKBAyr9mu
         mf7r9SuTuEPZhwmoSCFpQHltVAP6UzzG0UJpeORcfOevsApGG2uivjotxeJT/yAsCKfR
         iaqkbWFQ+ptQwRo/Qicmad1Rh8sxxajCFI3REZGOFviswXoT6U9Q+TjnEzWvpaIAW3rN
         GMW0Bq+KC3D58sw4p5rnY94B2lggdkrOReEqEyGHIu+K9DVL3eNZCqUbybFICITV03xh
         WT4A==
X-Gm-Message-State: ACgBeo19wU2zNT4Tpe9w7J0I1/LFPROdS8OVZKRF9WEIgp7gP7FZkkBF
        Vdz2JuWG504wuiCKDzG2aSA=
X-Google-Smtp-Source: AA6agR4pGbVWW9cQqZGmf6Py316KeOmIi4dqLDLr2RclP5uDsRyFBUayMTInks3baI3JzutIpeXGgg==
X-Received: by 2002:a05:6808:300f:b0:2fa:6fd5:9723 with SMTP id ay15-20020a056808300f00b002fa6fd59723mr2912305oib.202.1660364595459;
        Fri, 12 Aug 2022 21:23:15 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m15-20020a056870a10f00b000fb2aa6eef2sm275740oae.32.2022.08.12.21.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 21:23:14 -0700 (PDT)
Date:   Fri, 12 Aug 2022 23:23:11 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: *roff `\~` support (was: [PATCH 4/6] xattr.7: wfix)
Message-ID: <20220813042311.njw23k6g5mkrgknx@illithid>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
 <20220812221035.xd4udngmz5erht5p@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qsshwg6cv7buonre"
Content-Disposition: inline
In-Reply-To: <20220812221035.xd4udngmz5erht5p@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qsshwg6cv7buonre
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[self-follow-up]

At 2022-08-12T17:10:35-0500, G. Branden Robinson wrote:
> At 2022-08-12T16:30:01+0200, Ingo Schwarze wrote:
> > There are people using Plan 9 for practical work though, they have
> > even occasionally posted on the groff and mandoc lists, so that is a
> > bit more of a problem.

plan9port's troff is no longer a problem, thanks to Dan Cross acting on
my pull request at relativistic speed.

https://github.com/9fans/plan9port/commit/93f814360076ccf28d33c9cb909fca7200ba4a7d

I also have a PR pending with Illumos.

https://github.com/illumos/illumos-gate/pull/83

Regards,
Branden

--qsshwg6cv7buonre
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmL3JycACgkQ0Z6cfXEm
bc4Ubw/8DBhDHEvSQYz2L+gXg1RYaiSFfR0isUp83VfJpA1aVQiIA3iw0Pro3riI
mJe4XNOo88qHrE6yMkCPcO7axEWkdz35ZBli+KyOGHYYuIBSAI+3e5y7OewhUavO
eEmtmNmt6mSHN1zt96PRgJrK1XmL2wTFJ7qMgVwYeLObj/NfnlHJ0/I3gu3izUMW
4myqvwH15YQqIWZnEgF76gB/7yzFk9IbtfyW/18pykKv+zlrmqYyLNatXcN4hfh2
2+alQ88ghz97bcc9rHO0Qsltp/iuJSWPt8MgtHMZlzNDhhjf4dDxcuFDyyvGOHkg
gDDRqas0YN+E3yLvTh5SdjSV/rlxtgeKx8xVGst3tm+s0ZIdi2OpTJj0t+8Q3Wg9
WJtEjtsNVtOf6dyY3s4BHzYwAf08p9qaTjToDRg2Y+6Y2uX6ekVXTAE6AnFGMxRi
/hCxizQq1UJ465WJGVXjbP7Dzz20C6dCvKa0rrJE1Iro1P7GrjacHRTlxZu9bLfn
v0OY5jFUnRiXqw2puFT3OuG0lQ9+6eBMAe48x2B+VBgHtuu7q1ahJds+dXrEqXBP
6rQdyc8V2oR9kmeyTno/ieIiW2hvgeQMTOggYiN4oXZasSYiyHHmwTaFcurCeHtV
MdcLDrjRGnOk/oND8wnXB24ZOwacwvZF52fhmrZe3MfsJjdLiyc=
=KAEt
-----END PGP SIGNATURE-----

--qsshwg6cv7buonre--
