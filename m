Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB243641CE4
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:28:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229805AbiLDM2p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:28:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbiLDM2o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:28:44 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D744F10FF
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:28:42 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bs21so14777210wrb.4
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+EFf/gBFM3CcZGlej4FF0zYENc1979bpH0V6FyQQwZc=;
        b=C2Jx8SQ+CAf4q4z+5yjJetf8Yjehus8cQUASVWhco8PUmQx2KEzXOtTmb7o3Eazofm
         9P4RRlKDfUMmD61vuv8+eUEP65OXvx3NJcVj3NJTGng/BOpuxOC8icsVPt/nPdiBe5CD
         qrOUG7NONNZrxrBA0DOOGxrN5rk3jKTprbrGXr+g0Zu8gGteUA9Mmzc8rc4pwiH/ycwp
         s1xAF5jfabSoU1brbqnSd9m4g3kZ0GysKa2mcjbYYWghh2aWGrTxEnee57mptHeM+qvU
         2Wf1zCsOcCFURORsuiR+ErN2/PUQNjCBPOFR5d/g8xAIRlYym/CNve/iBylEVy79PHlE
         8oHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+EFf/gBFM3CcZGlej4FF0zYENc1979bpH0V6FyQQwZc=;
        b=v3U5KfGUrrozNH4kmp22O9mTpAjiX3PbgWeBg4BxZ2mYhXXWYhi5/YXvCzAte/vLPv
         nP7Mlj8KAa4gb7jBtaLSHJGYR05AIB0ZmTu2a6k3BEwyCe2AGelWDWp4q3Mm+g2xcFYj
         1kR2z4PLS4UAObJ2LqLH91QPdKan/h9KkdLTeTrfXsjxNZzKdESzWd20yiWDULF7AVM2
         +WeAZT0rOdenQWkcEFh+fumdDaYerY49AePlvCg6GNnKHXUnIofSOxOqcF1990sf4p1u
         6a9zs+u/uR/J1XRfe7Jtt3VmcofWekpsp7HXqaBcYnROx30GU+mdLL8+xxoSP1QcM334
         lCMA==
X-Gm-Message-State: ANoB5pmhIg3gcScx537Nll2AbKeqa8Bdol/WdBe/QkL2lxDdo56MHffk
        XO7vzdgJMQo77awU3bv9VEA=
X-Google-Smtp-Source: AA0mqf5d2bD6DeyKOthTtut6U00X10qRlMqRQaU8HKORWFrlt5s0C2Mb/1yhe4U5YFTYcy9WaXw8IQ==
X-Received: by 2002:a5d:544c:0:b0:242:65d:c39a with SMTP id w12-20020a5d544c000000b00242065dc39amr26257966wrv.99.1670156921440;
        Sun, 04 Dec 2022 04:28:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z16-20020a5d4d10000000b00241c712916fsm14354071wrt.0.2022.12.04.04.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:28:40 -0800 (PST)
Message-ID: <4df884b4-becc-0fdd-bb41-615cdcfd64ff@gmail.com>
Date:   Sun, 4 Dec 2022 13:28:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mq_close.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090712.GA487@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090712.GA487@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mHLJH1zUSzgGV70jvXV00RQf"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mHLJH1zUSzgGV70jvXV00RQf
Content-Type: multipart/mixed; boundary="------------j05gWXXnnMBxvXQbPtiZaZZv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <4df884b4-becc-0fdd-bb41-615cdcfd64ff@gmail.com>
Subject: Re: Issue in man page mq_close.3
References: <20221204090712.GA487@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090712.GA487@Debian-50-lenny-64-minimal>

--------------j05gWXXnnMBxvXQbPtiZaZZv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIChCPG1xX25vdGlmeT4oMykpIOKGkiBCPG1xX25vdGlmeT4oMykpDQo+IA0KPiAiSWYg
dGhlIGNhbGxpbmcgcHJvY2VzcyBoYXMgYXR0YWNoZWQgYSBub3RpZmljYXRpb24gcmVxdWVz
dCAoc2VlIg0KPiAiKEI8bXFfbm90aWZ5PigzKSkgIHRvIHRoaXMgbWVzc2FnZSBxdWV1ZSB2
aWEgSTxtcWRlcz4sIHRoZW4gdGhpcyByZXF1ZXN0IGlzIg0KPiAicmVtb3ZlZCwgYW5kIGFu
b3RoZXIgcHJvY2VzcyBjYW4gbm93IGF0dGFjaCBhIG5vdGlmaWNhdGlvbiByZXF1ZXN0LiIN
Cg0KRml4ZWQuICBUaGFua3MuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------j05gWXXnnMBxvXQbPtiZaZZv--

--------------mHLJH1zUSzgGV70jvXV00RQf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMkncACgkQnowa+77/
2zIJIw//c/8KSzh1XOFWKrI8MBliEgpQf7AXcXlfKusTOFxzG1BamcXWjOLinGk9
X7MhccXS5+3NHSfpj03uW3d33QG1Mt5grU+jjU7nFBccxiOZwRWwzoG/q+9yl9LS
igyRvsfAuVUe/2VY16uIJ1kfGAimCLtCkDJYPPsCfgU/AoyZ0pL4YA/eSKqXipfa
kkzxPkSh0qgXCoFZxAG1Wjaa23q/lZbYE5uUEyN+scEufaKCsv3a2+wXd4/R9toB
HRK9n6qAbCi0RUVbR9uy/yISziUAX5E3m7f+AJu2ZZAJfwrejphjtu6v+uqOT7n0
ePuMA8VHFA0P0Fy4t3GEuc1BQ8WQvK6Vicrtt2Tt1Xyt6817r6ySaD9lfuLBrHRD
kfn7LRqYzXCzpBhLk7NEd2vJEwAdoGJToujHOCOpaQnBgPuauoToFd82uw4Mpp+I
yW6lSNhiECS7g6CKWM21Wx4cm+ztcizjZYihDNwWk2KikQq2S4trZmqUpuBbWySO
IKSuW+kmAwStXiJA84yYk8cPS79REifML+t3pnwpcLNszl1ad6qRm7V+uktp9Ven
ibUl/2XFGi7zThnRavnlLUXOms392qVqLxJTqnDJaingWPrOGEECtf99MjqF4nZQ
kC8fHUwZa7WNnHWAA1uSyT9IrEDNtKjL7Gq2iVrH7odt6jDhfi8=
=P+fi
-----END PGP SIGNATURE-----

--------------mHLJH1zUSzgGV70jvXV00RQf--
