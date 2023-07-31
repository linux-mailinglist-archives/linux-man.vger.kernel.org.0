Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C084A76952E
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 13:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231566AbjGaLrm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 07:47:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231517AbjGaLrl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 07:47:41 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38774A1
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:47:40 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3a38953c928so3318266b6e.1
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690804059; x=1691408859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sVfJ5/8w2kBMgIX1l8y98skPGXbYWe3tPmdBqG/wUvs=;
        b=VoM86S93JgdB+8YFt0473qLmdpEIpFIf2uH/l8PpwSb9peJ0sn4KFZRPTI3qva/AVU
         25sa5CJbi/peUXBNrXXntSzLngYrTBCO+mchxcqjhWZc10zyMW9PvSBx2+PDNp/LNtF2
         I72SqgCMLKaUcfWTpFCRyIwgdOGqK3coQYxcMF3HxfnsHTjw70efVv/KaGxmpzeALfHp
         28RRx1umQiaNSoGuX3+nQBU16cSUky4qv6lrnD5Ni43MZHj24+6iTuuHzeN2o7UWQbdF
         LLra4iDjuaKy8+u0XHjwFdNylvJ6a/xeuqjbDTY6ybAjgts1sI7gwLFOENXu0KGDPiqt
         XRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690804059; x=1691408859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVfJ5/8w2kBMgIX1l8y98skPGXbYWe3tPmdBqG/wUvs=;
        b=LwgAMQIgIYyQWF3tU4VKY1Ko/BAOUe9UgZYOtc3xOZDjRa4I8QzQhPXke52feo5NN3
         J/VcIUYNkcPzFTLV8UQP2LeyF7pRbmfprYihv+RkI8utoBPgaypi+CdlLciUDkxMlMYc
         TXea695bvvyi/ONnSnLXOgn/HFxER7fpxyhY9/37QjsdJ8ycMONpHXyOfpps9vx+43fy
         77kEU5EJVJqzn7VvZRuEJrfJNrxeAwo9myQIbHpcRuofLBX3f4kQ1+1Y0wayvLDu0zXa
         e67D+XAYCaZGVeLyUEAe+8dV+ygwO8Wn5fQSEXDvgq44SLHWl2sLqXNETHcUB9KoY3P1
         eiaQ==
X-Gm-Message-State: ABy/qLan6XF8BBG6k3DZFDGJSt5tVcPF3Qxj4X5r42KXymw5sHTR3i7Z
        ZvDDwYtQn/srIKkH8IAnn68FAfZNx9E=
X-Google-Smtp-Source: APBJJlGDBkMGvNtB1FdBt+QZhwm3V5Ajd/ZkuH73hxUKUuij3bFN5CoLdz/si2CVMjTnyJjNamfM2Q==
X-Received: by 2002:a05:6808:1689:b0:3a3:9df9:1928 with SMTP id bb9-20020a056808168900b003a39df91928mr10357157oib.17.1690804059378;
        Mon, 31 Jul 2023 04:47:39 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j19-20020aca1713000000b003a40b3fce01sm3963814oii.10.2023.07.31.04.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:47:38 -0700 (PDT)
Date:   Mon, 31 Jul 2023 06:47:37 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 9/9] man*/: ffix (migrate to `MR`)
Message-ID: <20230731114737.nubrsfjelxrnt3ap@illithid>
References: <20230730200445.5ai65ekheopcvicx@illithid>
 <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rvquem56mrwi7c76"
Content-Disposition: inline
In-Reply-To: <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rvquem56mrwi7c76
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-07-30T22:45:14+0200, Alejandro Colomar wrote:
> I couldn't apply this patch.  See the error below.

I can't account for this.  I use GMail for my outbound SMTP, and vger is
notoriously irritable about attachments--so even when not smacking down
a huge attachment for going to a mailing list, kernel.org might take a
dark view of such things in emails to its domain even when privately
addressed.  Or maybe the two sites have implementation glitches that
work in negative synergy.

> Other than that, I've applied the rest of the patch set: patches in
> the range [1, 8] are applied.  Thanks for all your work!

Thank _you_!  We're almost there...

Regards,
Branden

--rvquem56mrwi7c76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTHn1kACgkQ0Z6cfXEm
bc5Z3A//Vn0pGwgtMOFjZaqlCZD7CMbVTQUczgUbgkWnc2b8BpReY74wEhLrkwMh
jCSfqauh3FLurRmciwUJ1fwcJzyxjK7hJASOBMVE2Hp95tI5XoBodQw8HmFJ4yTw
qhMyEdvQLcSSgNvoLeTKloI0Z+B7yyKjvd8Bbc4W+xjeNIE1YEYxk2xcC499naCQ
9J1RzAC96geo6A4NrDWWhsyAEW886TJVOalHGF5FOYdE8NguT+NcOjlrv34iRTUA
1NBbelAouUheBchDCGa8NsshgMNnCvQgeAsLchEbTiqn2o15Xcgm0BgMjRvfjMMW
7Tzol7p3KpNB8nETDQfF0U1snUcYquStUq5UMc+m8p4ITa/6dSFklj0279D4Hyt7
ESazHvvavxFaD+jtEX7F0ZdCbNpcrOipGr7ki0JGFAIDz4JqIjkVgJ1eaUXi2wlY
ZUbNQ4mJMm2zxs6pH3Aed4SM5bdnm11pWCwEDYXWr0B7nWGCIo0Jy/av3kk+4eEo
cMILGA6GM5CZxlAMJEkxrdWP3dPJFRc0chKDPsWQWQDoMx2MkVAeUxVmJtY6WIEQ
PwsgAMNfKj+zzBlp7+vzIskEmXt9AHp+FTavPQrmkklWpj99hSXHixig4lbL2hme
Vm1ltRvDU8diLgAHGtWc1NEE/9A7w9Bu0qjcXowF1iBc9ZtInoA=
=Mvdu
-----END PGP SIGNATURE-----

--rvquem56mrwi7c76--
