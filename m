Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A9265A6EC6
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 22:57:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbiH3U5w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Aug 2022 16:57:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229824AbiH3U5v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Aug 2022 16:57:51 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71CF5804AF
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 13:57:50 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id az27so15782202wrb.6
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 13:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=i70wzVYDngWwNIQJgiUiSyq9/dnGTBfUyeVYjrdyHHI=;
        b=dQRjyIWNpeOiEQZPSqEiLjoKk5ScmcvvzxjHk2e6oDh5na2BPnuVdHKx2B4UtWnhEA
         QG7byed30f7prCSFBgRRdFC2qQC52okXIZdh0jd14iNH91IkcC3CDlGUaHP9uqawm1W8
         8ZR81/b0unko8eGzqunl0zvUz0vrIUL/UN7x9tv3Qojl8f7QdWD6f6noWGWt/44lp6uW
         jvSCDGoQWWCHg8xI9tQ3JyLxR5a8ccGWz7NDnhLJSvMP/Nch4ZBTHDxMEq1I3KZKoiDZ
         blyC8I7qZfhwLNhOkBhNbSHVWtNd1ra1eNLdgZ7wtDD7CMw0HZYOhHSXNIq1EapFWqtw
         kyLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=i70wzVYDngWwNIQJgiUiSyq9/dnGTBfUyeVYjrdyHHI=;
        b=gLGOs9NKwuS2+K8oB/lWqXOk8zCuYzTNWlPhyDgqUJ/D63PNyEBSIgWR/1qquR0jq8
         +WfOY+0AgdNa4alZY7uJIipaD3MnD3y7wwGMll5IxCh4C8LrN1olIUsp4k1wIkoTzsEI
         QD5alfb1C/sxp/QnxhTEC+bu9TzpvFxNcPbvHE0Uj0kPRsPA5IKtd1VEIHmUrq+PLUdl
         DA/nAzH7WHyGhgZVjzqtys6g7lhTER5x+HtwhiGghD4CQ0ZBhLhDVsVWzltmvnQL/18d
         AhBvoc714rF0qjTXS0Jb6CZ7Cs7HpIQGmOWLqJjOv3R0mtzLKpHEJvrtWZ/MCd68H34J
         H/hw==
X-Gm-Message-State: ACgBeo2Emij1kEB4e0HLxmRRQhd3kjPr9bYsrbr13hc/seK8DBztRH3g
        p6Ug7qX82EM9ZlSZJX26OCU=
X-Google-Smtp-Source: AA6agR4RntyBxcBVv3ePSpOu0pyD+O8sGv+2WTIYzOVCGWSxUyOQiZzcVxe493ybu1ttMBHn5DoMNw==
X-Received: by 2002:a05:6000:1863:b0:220:6d5f:deb5 with SMTP id d3-20020a056000186300b002206d5fdeb5mr9675978wri.470.1661893069016;
        Tue, 30 Aug 2022 13:57:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s10-20020a05600c384a00b003a5f54e3bbbsm12717259wmr.38.2022.08.30.13.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 13:57:48 -0700 (PDT)
Message-ID: <00b20375-afad-eae2-6d0e-c6e3b6c193c4@gmail.com>
Date:   Tue, 30 Aug 2022 22:57:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] ioctl_ns.2, stat.2: drop unneeded uintmax_t casts.
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220830195800.1779-1-jwilk@jwilk.net>
 <20220830201312.mgt63423nskuenzl@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220830201312.mgt63423nskuenzl@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DxEgmERmsf2TFS0GRO9BdzJf"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------DxEgmERmsf2TFS0GRO9BdzJf
Content-Type: multipart/mixed; boundary="------------J0ds1XZgqHCCxIZrREJvPa0h";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <00b20375-afad-eae2-6d0e-c6e3b6c193c4@gmail.com>
Subject: Re: [PATCH] ioctl_ns.2, stat.2: drop unneeded uintmax_t casts.
References: <20220830195800.1779-1-jwilk@jwilk.net>
 <20220830201312.mgt63423nskuenzl@jwilk.net>
In-Reply-To: <20220830201312.mgt63423nskuenzl@jwilk.net>

--------------J0ds1XZgqHCCxIZrREJvPa0h
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDgvMzAvMjIgMjI6MTMsIEpha3ViIFdpbGsgd3JvdGU6DQo+IE9vcHMsIHRo
YXQncyBub3QgaG93IEkgd2FudGVkIHRoZSBzdWJqZWN0IHRvIGxvb2sgbGlrZS4NCj4gSWYg
aXQgbm90IHRvbyBtdWNoIHdvcmssIHBsZWFzZSBtYWtlIGl0IHMvZHJvcC9Ecm9wLyBhbmQg
cmVtb3ZlIHRoZSANCj4gdHJhaWxpbmcgZnVsbCBzdG9wLg0KPiANCg0KU3VyZSEgIFN1Ympl
Y3QgbGluZSBmaXhlZCwgYW5kIHBhdGNoIGFwcGxpZWQuDQoNCkNoZWVycywNCg0KQWxleA0K
DQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------J0ds1XZgqHCCxIZrREJvPa0h--

--------------DxEgmERmsf2TFS0GRO9BdzJf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMOecsACgkQnowa+77/
2zJmTxAAjI7TQiPYO/D0uhzKOvNj+4kGZiDMZH8//skZdl/0GuLwTPNG7pp1PP5E
GpEDEeNUwjuvZnv2P/SZ5d5FnMgtMqLLgpX+NZdOzxA3gO4oWqTM+ZHm0b9GP1vc
fzaT+O02/f44ztyCqZeeSeyniH1+2iJSD1xJp7YtZVhNzImRc5M37TnoegA8I0R2
2xPcQeA4v2lLnpGkCmHpO5ijq0h1J9lpf9NyvUId1Gawskc8cNgQ5PT0MH+1B/BD
K7VIBnk6xwCBthsTILo9rORQOKcJjfc+vaATW+A2hrcDNeA8ZVufrzxnwF04w4Pv
u4IFVpOEsYgJaRqatwg+ljTPC527Muw6pXFxLZfPJxN9PDxg8+qi6hIM86NiJxTt
vyV2TRrV3MJyPDRVwFjJxrL473LNI3YvGUyreWdWUbiCzGuYPuQm8A3ZVghOF60p
2DMZx1tfN/2Qm+RzrwWFvbGJgty8Nv9sXfqlo8v4+oIiLCR+fRAogbPlMDkEFCtR
I2ioi/f+i3SNwBjuVGqiC4Gi95w9/OxLsB94lGSoWDTQmJXG4V+EmDJ16ox8DxMR
XAtS+oEn7yMy4OQ4dnqzfIXc7ZKE1ohCMVItXPHIlE6Q0h2/o0djVaHK8tj5lHPd
pQoH7xZ3Evu4mTWkFF0sWjSRdCSq+riUfh8rreFkPMqaEAfwTlE=
=sh0d
-----END PGP SIGNATURE-----

--------------DxEgmERmsf2TFS0GRO9BdzJf--
