Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41DC8697F5C
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 16:18:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbjBOPSj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 10:18:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbjBOPSi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 10:18:38 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABB1072A4
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 07:18:37 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id c15so16071423oic.8
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 07:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DA+MBEdIcqh/wqDYOQFsbqWHEq4nekNph5uHt66mV0w=;
        b=O1rajng2CUR6otxRkLl0ALuqy7OtOtFYkmlGeMeQo0mJyvr2ksNrtzs0T1/K70LCmW
         /gX4bHHS1SMO45xL1CWEnyp09t0yZaBeFfGLMjS/dxlKgXMfTrQZufS4h7yNKF6NrUT3
         hwbvBfG0vaxil2zgkLkX9urzGybvvYM437sZKilwO5L/sWoluqhsckDejdkN+vMHn6wb
         pQZymOTjm0/+iu8vZoi/wN65uzKja73sBUetmPViYn+VjC1NUhw217nm3hYLQwjx8sGX
         S5AftLxi6nJhvFtzFx2ivLM4pd5wukzCP7g0kVpwahzKVvOts/M0MNEQotuu9R1gTGAQ
         geLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DA+MBEdIcqh/wqDYOQFsbqWHEq4nekNph5uHt66mV0w=;
        b=dwwUybnEYLuARbUcx4HBfSmotwfmMjG/ATiyYBdUxw+RYMXtoDC0lDoNhmzwmZv8zb
         C4rcMmAPgt1/ec25Ph2dE+pM3AYZhKL4XSP9ZRXAPNBCudL2FnfRS0SaPZ2+qC+iwphg
         mcB2gVtW5m4pn00zON+AXkbNtVyor18NanBIU9WBb4TXgnL3kDFJOTNuoD5MzhrFFYG+
         6Zr/Kkr9q+hKU7ifJm97KltVg+enKHPj0BLuGRHlQuOIuX7X+Q9Waqqm12Xq+Iy5p/TB
         MQV3Lgi01F+XX2auYkSSyphLqWT5gYitzHkn/zEvGe2+jGZaxWMbGjN42J1qiSTOFgTa
         hJaQ==
X-Gm-Message-State: AO0yUKU7DEDmDRdY2egIKweQPlcFx6aVxC4WkJSWN7dSz/8FH98LLB+s
        TE4MR9aJ5CwmSJkFAg57174=
X-Google-Smtp-Source: AK7set9rwB7ubJpXSs8EBljw9aVeYYDoFZQfiHlZTjKWUw1c2dnPrMrvafd56b8WtS9s9nGWgNDRZw==
X-Received: by 2002:a05:6808:657:b0:35e:401a:7824 with SMTP id z23-20020a056808065700b0035e401a7824mr882315oih.51.1676474317074;
        Wed, 15 Feb 2023 07:18:37 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y11-20020a4ade0b000000b0051762a73553sm7010101oot.18.2023.02.15.07.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Feb 2023 07:18:36 -0800 (PST)
Date:   Wed, 15 Feb 2023 09:18:34 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] memcmp.3: wfix
Message-ID: <20230215151834.qorjvmvoqza2ddmr@illithid>
References: <20230215130750.30037-1-schwindl@posteo.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qdeskmlasdjpsd6t"
Content-Disposition: inline
In-Reply-To: <20230215130750.30037-1-schwindl@posteo.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qdeskmlasdjpsd6t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-02-15T13:07:50+0000, Tom Schwindl wrote:
> -On Linux, it may be necessary to implement such a function oneself.
> +On Linux, it may be necessary to implement such a function yourself.

The existing language is sound.  What is the motivation for the change?

Regards,
Branden

--qdeskmlasdjpsd6t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPs98IACgkQ0Z6cfXEm
bc5ALA/7B7xlGHzEVIUctbnLI9KBG5K5fBW4T4xNZfqZGov0s+b4/Tylp1JDdncN
Tc/pAIaGaasy/GjyGbwFQnP6nxDAeKZpeEIo1zxHMYrxFHprVyt9G+pM35kpaPZJ
9hu+aPBAqNLnPNZAR/UNUS09//fZ1yL3gCq0T6xY595WkkVNx208lIwjUIZXgpNl
ta+FvQ/O3loYo4lWEvJnyOlz475oT9BVjU+t79aLP1YCOKuQ5InfsqrlTvDMoAey
tpKMH4y1X+nD1e/LdPZTEa9HlW8t6i9z8DJe8ZzfS6YHV0rTzDdmqyVCxYz+UpEF
8uGXuMOjepRuANeYsNVfnhWntHKe+Wy6FocwtE9TJGl4twYu6MSfAkm6prUxgw3y
NzmvBnUwv7HNt2YBfwGFwjpiUP044aJr9mHpKyUWDNP00Eapy5bO+uXF5MWdr3Ci
1T30w0K22qRcwL/4vQYi/65HwnbmDU+vj/qIaxOouasx0cJbsJ5EY0ePfjPXYQUE
PZLiwCNAnhkSYS/9+p4tgzVBzSGFGmr1FgGocnRh2Uup5HRfPoANkJWcOV96Ekxr
O1ifIxK8B0kiYvKTBHX00dm/fAwPGP7v/jj2efHuWjUjeetbxJQaDyIaNU3VyoXP
K7gKI5IuSjop1kjW05VXAEmbi/O2H+jQVE6nhI6ZvHZWkVhSEC4=
=qRwB
-----END PGP SIGNATURE-----

--qdeskmlasdjpsd6t--
