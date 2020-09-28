Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46D5027AE7E
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 14:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726485AbgI1M63 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 08:58:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726380AbgI1M63 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 08:58:29 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18555C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 05:58:29 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id x22so932469pfo.12
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 05:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ENZG67x9qetx2PRNXJsVzTYri/BcGAZxhc4m/98gSAM=;
        b=UV+Fs39twKbtuTcHGjpEhEhKrr2x4KN7mqmAVcr70yb1IH+aWJe4NsRXzeDdlOkih0
         wvOCY+RwJFRnEjKy6DaSTEpHudBWKoBJaPWkaLMgYwtIjgNc97+kubf1nLkFNqxbcKNk
         G2Np7IshRpI1ro9r0hZRms5C5KKLTaoSMADEgb2IOntTFmhACVLvWoT9N7+RgrLkJgcQ
         CKvYRM8uZCCRGecRp5QwFaG93gGAfd2qFqTq719koT6dApky7kvHxhFBMCqXAJ/D6AS5
         ADy++pbsuwbB9p0xWFha0gMXF1/ljCL1qbF52qRIhehMytTE8JMzdbdNjnXBjCHb68wm
         xTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ENZG67x9qetx2PRNXJsVzTYri/BcGAZxhc4m/98gSAM=;
        b=sb13d8N25HF0slZsjPNq9GFzrIP5Az/OEl364zSkcrXsDeAXupYSQ2re5T6nupchs6
         0MM05h/TxO9Dvy4jPFQ46XHogqD6PLNGQC6kPJFhkTzGeeq40PRh91DFrM24+NOG8sjJ
         FOs0uis+KzpopgsNzfML8Yaw3Sx056eA24pM9Jtc5NRlBjrPEOedG4VBm2rjoZafG4Wh
         NX0RRsS02ib+TqL+4TOvS3sIcd1VVIqtxVP0oUi+le7ZSwn45qr+28h+cdfbWxdPMftn
         vai0/59mws/XcEj/L8erO5LWH3enbC9sRGsWXfrCxU2pP2UgP590C4xoMmPvRaXa4kpF
         I+AQ==
X-Gm-Message-State: AOAM532NEc6agb7CsnwXqcGPT1Wobnk55qL3ShkHAxyaJmU12AGUIVfv
        3pC3sKGP/KE7JqH6+q7cRiBuxzr2Rnw=
X-Google-Smtp-Source: ABdhPJwwf3LL/B4mkSzXrKKWIge0K7qXHcmKrbKaX7AwDq0WoCG5IIygkvTF+bXt4Saf100vsxuzfQ==
X-Received: by 2002:a65:67d7:: with SMTP id b23mr1078777pgs.362.1601297908671;
        Mon, 28 Sep 2020 05:58:28 -0700 (PDT)
Received: from localhost.localdomain ([1.129.173.67])
        by smtp.gmail.com with ESMTPSA id 134sm1366026pgf.55.2020.09.28.05.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 05:58:28 -0700 (PDT)
Date:   Mon, 28 Sep 2020 22:58:21 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Message-ID: <20200928125819.irrpwbn3j6qpzc7v@localhost.localdomain>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <bff2769a-8999-b658-6bb3-5b4bfa8255d0@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sbsa2caowca2du22"
Content-Disposition: inline
In-Reply-To: <bff2769a-8999-b658-6bb3-5b4bfa8255d0@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sbsa2caowca2du22
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2020-09-27T22:24:19+0200, Alejandro Colomar wrote:
> Yup, I introduced that line a few patches ago because
> I didn't know .RB existed :)

At the risk of being the sort of tedious jerk who promotes is own work,
I recommend the table at the beginning of groff_man(7)[1], which can
serve almost as a quick-reference card for the macro package.

> BTW, thanks for all your comments.
> Thanks to them I improved the style in system_data_types.7,
> which I started a few weeks ago.

I've noticed!  I'm subscribed to the list and I think your efforts have
tripled the average monthly traffic. :D

But it's a good thing.  Section 7 of the manual is criminally underused,
and data types have long been badly neglected in documentation, with
functions sucking up all the oxygen.  In my opinion, every
externally-visible symbol a library exposes should be documented.

Regards,
Branden

[1] https://man7.org/linux/man-pages/man7/groff_man.7.html

--sbsa2caowca2du22
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9x3esACgkQ0Z6cfXEm
bc791Q//di48JCkVw0QwKKZRoF4js7nkwqzJBmj7becVc7gnKjpPZCeCdEEI7JlG
AAUjZVu0yLHRKXjDYvhNQXuusfktivhXhoWw0o3l/9bx1lAqhhE6p2jpG8/p/7OH
C2raY/4DZKFg+sjWBfybtDkyIOCzLaphLRL5jrv1iow4JyDKH44+U0X34f59B2nl
V5xdX9CEQAn9ospOY0segKl1KZuSa2k+xcQRMu6DDo2EBeQfDHC6vB1KdYrlFwMl
xJXoidjPpsVrgvyG7OlUHc1seain3+u6dhqSK8wH3ILZLrOhHqMsyag5iTzagBFU
5XtdLIO6v3iap7E7bboCRKYFDpAopbX853dy2Wa8EIG9we1jS6yapaa6/GREjnmE
4AB99G9BlbPBqRisHPQvO2yV/i6i08BnxBXYIvpo1CLJTlx8aCbHPWvrnz584Nyf
CFMS/Uvxl+MzVv0CgW8RIftpnGQ6BHUbDZXK/VINJ794adVJS8Y/tWn49u/NVweO
nISdwkYZ2hxos99CqY50B+cj4kLOqbzwRAuAXexqOCPGW5O86OnHujOhf5cHFeAY
+6alA3e+iHqmm46Gy4j67BUGulTQkyJho1MHMdlpPsy1+foKtxJSdbPOvoXLGbp/
FTuQo5nFxYVKgdSN2k5Uy7pry6VzjdVCid01VygCei8B2rRqY6A=
=myg1
-----END PGP SIGNATURE-----

--sbsa2caowca2du22--
