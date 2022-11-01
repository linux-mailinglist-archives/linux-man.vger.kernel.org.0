Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FB1A6142E8
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 02:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiKABvP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 21:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbiKABvP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 21:51:15 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8859715A3D
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 18:51:13 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id m204so2883571oib.6
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 18:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G/9BC+UXGLhW7/SnOgb67OOY0+/FY7XtMtn4c3iEDhc=;
        b=egHCCtb66O34ytdR5KrCB8oLwTbQZjdXiP3YCtNbdnhyKooDSb1i+3AJ5+tPUrmVKg
         i6p6DfA0H84DD1oZBkCapkOhHEiJVD9rBoI8ZQmkOZmPuUbd+sDa3UYv1BzJ1C2JPjl4
         MfMMuM7qr4bL6ZUln49k4KRuHzaWv0zjcJRxS8M9iQBTDPk4RmfShbu4F3TPaExFfTCG
         kUDPcjwJ4EarpvCklgtEkmtneEIe0xsDe22saEggoEMXJNTlV2VLP3dIZhXHgI9y7u3L
         66L+8oQ1pdPDwbuKTQR5IkNlASSuIaisCPRLvK7CNZOSVIE2Zn1eg6oHpO4kDtjMghJd
         +TkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G/9BC+UXGLhW7/SnOgb67OOY0+/FY7XtMtn4c3iEDhc=;
        b=OhOt/dqMdf8ZcXTz/sNt+EtsyRhGLlk3+HikOoCFtr3Dm5d4Bzy0dddN+y6rSLSedZ
         3Gpv5MKCXHaKBYeRxSQzCqcw8O0PEfHgTSl8SZQvDXs7M9a+VzzXXvs4PbAWU+lJ99CS
         PdWBqu2qp4V/2gk8P+O5sYalRK3xIDuu4wpC/Q1VLU+jIAYBRSmQG5jEjP82W5P7iluJ
         GsM1gnp08r+iPw0PDBHC5pk+nxAEiyEEeZsNr5vP9m3RyYS41nzvxM8Etnw1jehFeKQV
         tUNPf9gPBtHwnXb0l2ybvJYHoOXjvwuksVFgz2SXYaJBSbPZdwEWtTkZorQWrmDxA3Xg
         fjZQ==
X-Gm-Message-State: ACrzQf07CuA86dlweNICXzZCGBJ3eAPXV7V54r+T59RVPrWq1KceiHPk
        XXjZ32wmXm27oW1Gnp9mlKo=
X-Google-Smtp-Source: AMsMyM6JGiYvko8hLiDHkta9bFp8NoiNCzXeylChBAM1GWgi6wMXCk1igyFe3zwZEg618tMoeDjuqw==
X-Received: by 2002:a05:6808:1982:b0:359:f644:d164 with SMTP id bj2-20020a056808198200b00359f644d164mr6539748oib.42.1667267472833;
        Mon, 31 Oct 2022 18:51:12 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v4-20020a056808004400b00354efb5be11sm2939804oic.15.2022.10.31.18.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 18:51:12 -0700 (PDT)
Date:   Mon, 31 Oct 2022 20:51:10 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Zach OKeefe <zokeefe@google.com>, Yang Shi <shy828301@gmail.com>,
        linux-mm@kvack.org, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
Message-ID: <20221101015110.jjavjoltbwc3ohep@illithid>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
 <bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="njygcjtx4ur5meh5"
Content-Disposition: inline
In-Reply-To: <bb3b5c3c-3966-ea1a-6d84-4f7f3afa37ca@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--njygcjtx4ur5meh5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2022-10-31T22:15:09+0100, Alejandro Colomar wrote:
> The issue was in line 474, and the issue is that it uses a weird single
> quote. Please use the foillowing ASCII character for the single quote (see
> ascii(7)):
> 047   39    27    '
[...]
> I'll report a bug to groff(1) about the issue with the line count.

Thanks, Alex.  There appear to be some very old bugs around input line
number tracking in GNU eqn, possibly going back 30+ years.

I've committed a regression test[1] and fix.[2]  The fix can be expected
(along with literally hundreds of others) in groff 1.23.

And now I see I managed to sneak a cosmetic indentation error into the
commit message for the second (but not the ChangeLog), where I'm stuck
with it forever.  Oh well.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=7e23e1342077a6d7c0b02c3d666f131d95f2b510
[2] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=dc98a8b09e7f3dcfe968b978eb210f468db78cc9

--njygcjtx4ur5meh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmNge4YACgkQ0Z6cfXEm
bc6zeA//cpLoSOVj3oqZ2BeyLNJqha9nqx4iUuqrJPKFqAC7xUGoB8Q3Nkq84Ohf
zv5b35F1/CwyYFN/YJrPOf5LZCO3gj7Ep22O2A0EBCNu640PCQXyt5PalPq//lss
F+3QhpN7djSpw37aH3fbH25BugK9OjpWd4x1C8ehFBGKAfZKnAuqrBYwMQCK4AKs
fQX4bSHNTJ9ZtPdpjpXNgV8oW1771dVOMEDd4Vbtan/Dd0ImO8yjX8gtMjoGJMmo
zXJMtIneOBMB+yIQvs785n1/3obTlqOGVPVwyIiE+52mOBCVvc72Oo0m7JXAPF47
cddXWBcaL67iCe8Ev1z7F11ECa95eEwbCfb5AucyzAzXKfRDhjSNC49ucYa0pRhJ
z+ohKn9gLglyWNvM/7mOC7R2Zm2Aq8ffpJ//EOUYQRnN+izmf6YRHbb6V0+DdA/h
Zvb7uWmGweX1r4C8BzNnPjWmpbjpjayESfUFXA5+uJTcDo8f30xBHzXnIiDHX7hC
vcR9kk5e6xWeYaLA0gDiMi7EHn2omZBsie/3uSwLtpg24XlB8Qda7UfdafsAhBln
8y+xDyqYELglmmktBPudRWMOeK4YbPAp4p5J5z8RHjvOoCymY05pa6oNsDU94eAE
GPMKRWbVANWFk7nGLGZaB4eWIxureduxi7ZzGbCbqYc4fn1OMh8=
=vSuL
-----END PGP SIGNATURE-----

--njygcjtx4ur5meh5--
