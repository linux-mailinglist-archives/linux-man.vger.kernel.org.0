Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82DEB641F4F
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 20:52:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbiLDTwk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 14:52:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbiLDTwj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 14:52:39 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B82401026
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 11:52:36 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id q7so15755896wrr.8
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 11:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWBjKvd3OOx8UTelCNzia+uFU1NKH2fjRAdnZZoxGXo=;
        b=NRQPNpbvVBCo6imo1OW7Bnw3gY/b3UqWr22nf9w7h3JhL8GbGKD5xMIH4S8DEoGM5D
         6zQGwcfML0PzHJ0Lh9MyNSGclmtNnf2RM5fBRE/pzL6bSXIb1NWsgPdkW9H/XlMVp/Iz
         dhMY+05FYmlU53Hmg1miO9bKXhuc+vDiJYF3jsUP0XzycvfcnUme5UdUIp/erBbYMV3o
         OyCJVbL1fcGajaGcKXqBv6jtLVwXi5zk+q2v47tGBk6w0NMdPRd8Q5EMCTdIsxiaUz78
         JTzlObl1V6LADAupFgGlS9N7yYUS5l+hei5AWWyPxBIWOMZ1pd0bc9PSzBkmRHKTs7TQ
         Mx5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EWBjKvd3OOx8UTelCNzia+uFU1NKH2fjRAdnZZoxGXo=;
        b=re/+nvxkXMBKEzjtCAGSjbUUuklRXsNL7QaJYU4nLcqH5pNpIsn1ZoOkD9OUitFfWE
         f5EVmP8iHlQXT4bC8WMVjiQYB2MobphRVgdVoY6KS/tXfUmczwrPyrUVhy0UJhscbIqe
         LAJBDYmDTgEOcMvyeLHhR4yIzD8lcY93QCgB1vekDNxgczsr3oT86hDTfm1TrPer6wHT
         c9lyYeEbYNOWCm7udhEhS7IFkrnUdjRNIP/XMiIeLDGpwADV23B7J3usXTv+YuAuDmhh
         cS1WmEC2xFwZcWbmbJ4Iri+vhSubtPjC6RXB7Dr9whHr+wfae2rzpr2ZUOW+cVdBtwoW
         c5Ow==
X-Gm-Message-State: ANoB5pnE+UYE2PpErifyNiHeojOkWgFhO1y2nB43luBC6xnMXnnMKMHc
        AUCXvqGo/NM5WidgCHRcR1M=
X-Google-Smtp-Source: AA0mqf479vWuqufdeVl60I7ztzWwzH5Pvx0Vlc7wZPjmup/lnckIuVhKSBKXIwHy0gt9sFwDFvPjZA==
X-Received: by 2002:a05:6000:1707:b0:242:271f:d2c3 with SMTP id n7-20020a056000170700b00242271fd2c3mr13585895wrc.335.1670183555307;
        Sun, 04 Dec 2022 11:52:35 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c2cb000b003c6bbe910fdsm23878501wmc.9.2022.12.04.11.52.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 11:52:34 -0800 (PST)
Message-ID: <09758b86-2f45-2ca4-4641-162c74683e3e@gmail.com>
Date:   Sun, 4 Dec 2022 20:52:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page proc.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090715.GA682@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090715.GA682@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------In3PhWI9K3WmclGJdQysGULZ"
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
--------------In3PhWI9K3WmclGJdQysGULZ
Content-Type: multipart/mixed; boundary="------------dqiLg1sDJ0pWfnYtQLM7MQ11";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <09758b86-2f45-2ca4-4641-162c74683e3e@gmail.com>
Subject: Re: Issue in man page proc.5
References: <20221204090715.GA682@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090715.GA682@Debian-50-lenny-64-minimal>

--------------dqiLg1sDJ0pWfnYtQLM7MQ11
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIEhhcyBtb3JlIGZpZWxkcyBpbiBMaW51eCA2LjAuMTENCj4gDQo+ICJz
bCAgbG9jYWxfYWRkcmVzcyByZW1fYWRkcmVzcyAgIHN0IHR4X3F1ZXVlIHJ4X3F1ZXVlIHRy
IHJleG1pdHMgIHRtLUU8Z3Q+d2hlbiB1aWRcbiINCj4gIiAxOiAwMTY0MkM4OTowMjAxIDBD
NjQyQzg5OjAzRkYgMDEgMDAwMDAwMDA6MDAwMDAwMDEgMDE6MDAwMDcxQkEgMDAwMDAwMDAg
MFxuIg0KPiAiIDE6IDAwMDAwMDAwOjA4MDEgMDAwMDAwMDA6MDAwMCAwQSAwMDAwMDAwMDow
MDAwMDAwMCAwMDowMDAwMDAwMCA2RjAwMDEwMCAwXG4iDQo+ICIgMTogMDAwMDAwMDA6MDIw
MSAwMDAwMDAwMDowMDAwIDBBIDAwMDAwMDAwOjAwMDAwMDAwIDAwOjAwMDAwMDAwIDAwMDAw
MDAwIDBcbiINCg0KUGxlYXNlIHNlbmQgYSBwYXRjaC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------dqiLg1sDJ0pWfnYtQLM7MQ11--

--------------In3PhWI9K3WmclGJdQysGULZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM+oEACgkQnowa+77/
2zLoGQ/+IMGbZlBENARpJkQGBe8uv6yg/1HjOzdcIi67Qk61SXcKNXCysDn8GJDh
YYNxgOcLij9IAhONVtKoSh84swgd719vi/v2ZJe+OF9e1JM0Kxiqht4GCMKoDv5v
uPccekbhnNHEfxtyYRxEXnMc+kKzX7LwlgbjX2uF3Np2V+mfMV8Tfb6sIeDXRgHX
oFH+sH/f+hgmwij3noiN/ou+1aDiw+7odsnp3bBqQPKY2PS3QvqHE17yLdaLcXrx
Df7HHJpYpTfaSeCcLsYfUyTUH5F9zhvwb5pbVDnbcOnggUuJ+ONLtvKpHZ476rb7
UFoXC7qoSnVwKUy09jNecSc+ZkOd75B9zTK91sbApGSjq9K6rtf4YgOjhfcJBZJS
MBXrL2Hb8LJyj/7qhdMosBkS97bCVXQZWkVwaylsgno2PcBFwwFFHrg1RIXotSbU
aUFnAjhrJQXveyLry2iQOsdl3CgdG9af0KhjzEy70ef2l0eGvJHhRDsaP75Qddi4
WpHjB6HveEPIToO5iN20SY9Vz7I8GLcwdQQP4ftDLACxBI9cbSbYCtDa4hbmbH+u
PjOG3rtX+BS5rpVBQvyudhOJF7SJj0+ty1gK/BtX+2U8k57xzagdLedkocaZqhVy
JBTNDmHdzEPoQ4VG3qMyEhzaOAr1pr6Lnopg5wmDRnIbLwwohEM=
=VJ75
-----END PGP SIGNATURE-----

--------------In3PhWI9K3WmclGJdQysGULZ--
