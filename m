Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1CE467723E
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231305AbjAVULE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:11:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230037AbjAVUK7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:10:59 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8185F12F37
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:10:56 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h12so5075120wrv.10
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ggm4HQ8T78fYBZyhkiy36PpRVF9bMzWcCsGpZJ7fL5U=;
        b=KTkIE+kLDQI6+xVgfjcVqBuu6d+LCNCjfkCVBxyIogXV8CBqYnnnGFLhrOzF2UgkTy
         cWQsYCEpIqwYpPncel2XETg9O3YatjDvr8sqqiGTuoBIMBQ7MJcyQpiWP21FY6mygsLY
         YnevjMdNy5+j2DoJnZD2mESJZChThusFW/5DLgvdRVMNYU3mi7ENe2LffWlAfroPwilk
         6KPd95j9NraB6FBuoFxe+Ari1dLp0IjiTT3xdeRm2HPevoy7XSif7Jw2oaz78/pNWPtZ
         6sOg49ww3MT3+VmdQY/xTS6BXddDCz7YnYSYcu1wbMi9KPt2HnA+KNeh8ietUkl1I9an
         ZnjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ggm4HQ8T78fYBZyhkiy36PpRVF9bMzWcCsGpZJ7fL5U=;
        b=KoHiAgPZcO5+JD0euoZq1TQQpe3SNHYP6PD4Z2/CwuRqf5tIw67d4U4LkSEb2G+aSJ
         uim2sxhFjQguA+OrQUntVncOCBbTm/zl+HynfN2ZF4zTxyN1gtAAaQUkt0Tbym62LdEB
         fq2pFfzg4WRORXfUZTbyzIIouvYB762wRhxdPH2xNkPO1I6/gKa7g4LY1eJ7aglV+rCv
         c/ZU+wNzlqeC8Nomh7V+TdQZRJ9yjr4mhPkLJA8MwLPf6s+0KbcmAWHDYGWZllwvTfPb
         NHwFssi1ymdRAcE3zen47CBd2Fm4mPX6+2ac8GFpMMUlwBMTLM48HPIHElE+jIawfue9
         Ebcg==
X-Gm-Message-State: AFqh2kqPPhhIQ+p/vmPzqyljqLPDaDH92+W7RNrgprXSmNn0uB5EH8Bj
        5TdxCpC1RX9WHISVo1SNUbQ=
X-Google-Smtp-Source: AMrXdXsD7xcjKmtlN3tKDoQ2MBPrNiHOM8koLq644l5u+uAYFumXv8JfnNFYDUxf3JSpWkb7PWJcug==
X-Received: by 2002:a5d:4cc8:0:b0:2bd:d779:c1b5 with SMTP id c8-20020a5d4cc8000000b002bdd779c1b5mr27137631wrt.27.1674418255100;
        Sun, 22 Jan 2023 12:10:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o7-20020a5d62c7000000b002bbeda3809csm34983809wrv.11.2023.01.22.12.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:10:54 -0800 (PST)
Message-ID: <5f1bfad1-e5a9-cae6-0f42-4d45fd08f6dd@gmail.com>
Date:   Sun, 22 Jan 2023 21:10:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
References: <20230122193124.GA28765@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193124.GA28765@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------u588uA5Ajam7RJI0xbd3jwMB"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------u588uA5Ajam7RJI0xbd3jwMB
Content-Type: multipart/mixed; boundary="------------0jrduuBmyYuLXwkB9QzgYNsU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <5f1bfad1-e5a9-cae6-0f42-4d45fd08f6dd@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20230122193124.GA28765@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193124.GA28765@Debian-50-lenny-64-minimal>

--------------0jrduuBmyYuLXwkB9QzgYNsU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIG1vdW50IHBvaW50IOKGkiBtb3VudA0KDQpUaGlzIGNhbiBiZSBXT05U
RklYLg0KDQpTZWU6IA0KPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1hbi8yMDIy
MTIwNTEyMzgwOS41cDY2am1wYWxoZDRiaG9xQGp3aWxrLm5ldC9ULyN1Pg0KDQpDaGVlcnMs
DQoNCkFsZXgNCg0KPiANCj4gIkhlcmUsIEk8QT4gaXMgYSBtb3VudCBvbiBJPEIvYj4sIHdo
ZXJlIEk8Qj4gaXMgdGhlIHBhcmVudCBtb3VudCBhbmQgSTxiPiBpcyINCj4gImEgc3ViZGly
ZWN0b3J5IHBhdGggdW5kZXIgdGhlIG1vdW50IHBvaW50IEk8Qj4uICBJZiBCPEI+IGlzIHNo
YXJlZCwgdGhlbiBhbGwiDQo+ICJtb3N0LXJlY2VudGx5LW1vdW50ZWQgbW91bnRzIGF0IEk8
Yj4gb24gbW91bnRzIHRoYXQgcmVjZWl2ZSBwcm9wYWdhdGlvbiBmcm9tIg0KPiAibW91bnQg
STxCPiBhbmQgZG8gbm90IGhhdmUgc3VibW91bnRzIHVuZGVyIHRoZW0gYXJlIHVubW91bnRl
ZC4iDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------0jrduuBmyYuLXwkB9QzgYNsU--

--------------u588uA5Ajam7RJI0xbd3jwMB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNmE0ACgkQnowa+77/
2zIy/BAAh2keBGwzsf0nlU54MmUXOCQfXNypDNBl6hu4H5SaIr3FfF2jOAjWJaAS
muiTKUaM68p/aVMp86u8M58pXy0bE1GBBe2S272QyCaRVl2sgK2g96TOfp2gtCVN
y+eX7eVOmqvUiYd36S/mfPxmXCf8ZjV81sUkVSQtazqNsjpBOuud+4oOMA8uNGpH
KvGgTuZfHwyIZLGNkjVPR83I2LHUYCv8St+fKbP5UVNYKwlh1seC0ZIcqmaeCrDw
ua+g+1ll2IQoofofTX9XTkpeehXCoPMMinkCzoQsIxl9Yp4xcQUB53UHC6I6YKiH
yAZHFoXKjwu7kh8LRNi6mtO+iQmPnFeLhWR+df8qaDJ6E3RDOBWxxLVaw0Abs7HT
2kFX1v/+qUl0Zbkasidoqk6luSf7n5E7dSuD7a9g/3fexq4SEDNhRm6cJKXYv0/5
J4aRW1dQLRF9dZeaYCfSZvTItvBhrsuv9zHnV0vEO5hz3IH/hJfiTwgf7SUas+ey
Cd+vDGzNA6qQhaDgD4AiJD9CwzVb+UMWJBj/+ChaYySsSp1FoHtevpgHSP5LicQi
xBqKprfHBnLtZg+UhC+2eE1SDBjtR4PuN6lKLxEqIYy55iZ3xA0Z/Q8Cd7fSnBTV
okmc1ikt5YKKtDzbaZ/t/r5mKHgom8XzIJyZteE5c4LQD0RadOg=
=FINX
-----END PGP SIGNATURE-----

--------------u588uA5Ajam7RJI0xbd3jwMB--
