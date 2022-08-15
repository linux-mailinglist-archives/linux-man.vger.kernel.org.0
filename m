Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 838B1594D47
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:34:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232695AbiHPArD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 20:47:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347563AbiHPAp7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 20:45:59 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E46E319354A
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:41:12 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id j7so10336573wrh.3
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=K1jMeWf44nxn7MzguRKuUjcdgbySxG6KYhz++mjPJN8=;
        b=DpxiYS91OwnBtc31jyEyKyXmELAfUx43jsCQsui05usJue3qVcF429fFvphYJkmXUA
         GkrpbvCPbXlx9/l/HKqx7u+TaXSALohXb9E0DasYoodaz1dfkF6LdlQ+kV/T8E7+qMtt
         kd8yxUgZkdw5aC8DWTU7U/Vfu0ONy5o8h+ifJ9KZ7EZDr0r9pC/sEp/Qg5YygYHoCeQZ
         hiDLaYrQm9BigH/tRfwc7sxm+q37GQ0zPByvFvkA5fgNoh7V/A1xo8yHvdeV2ZXFXEGi
         3MrLqMl+HRrml+SHRQNszpHuVKlMv8iC+o1N+HHgaX+v83d3oWoow+4wvX6J/qJLgIOS
         D8Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=K1jMeWf44nxn7MzguRKuUjcdgbySxG6KYhz++mjPJN8=;
        b=X01XBKgi1pb0Yx1WaM0YVE59xsfcRrp3GkjMyjgxVle+f8GSC3Bx2pacqYjNkDeoqx
         cmKx30FNMDyjfNuKz06/yubLAnKOhnrYP3rFZz39ysI/DOvymVUm9RywEZaf+KKAAu8m
         CH88LG2OiN9zbGXwcdCPKmQexsVPEN7hl7nhD4uOabD6znFCg/4wVQ+/jvbGHJU5JC7Z
         ZUivPLS2Gbiyj/NeLyqKx4tPlIz0KGxqSY0GVhFgfraoTfPj7KETF0lmy7rkzfDbvQVV
         6eMc9tl+vSVXdgVESMZ+agNtkkiqvciN3eGYVBE9rY+dmpyBQgbc+9N2noe62bEAmbn5
         FxBg==
X-Gm-Message-State: ACgBeo1YZuWHf3T1v401w8Jolee0W8LIkWNxGDi7TsIz0nVCvxAcpsQY
        24RKdvEG/jbd3CBtU+Xkp7M=
X-Google-Smtp-Source: AA6agR6lo/CXYs8fO0oIvi7dh/sypd987u1GLJspPj/crxA72gSayviFad9jEPYvOJazNdSYzylXdg==
X-Received: by 2002:a05:6000:71e:b0:223:764f:b2a8 with SMTP id bs30-20020a056000071e00b00223764fb2a8mr9897427wrb.79.1660596071363;
        Mon, 15 Aug 2022 13:41:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id ck6-20020a5d5e86000000b00223a50b1be8sm8406437wrb.50.2022.08.15.13.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 13:41:10 -0700 (PDT)
Message-ID: <0c07c5ad-01f3-0e74-a2cf-4a5198460c1b@gmail.com>
Date:   Mon, 15 Aug 2022 22:41:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jCOjmL1x2fxhvJc1iOw9Rgsn"
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
--------------jCOjmL1x2fxhvJc1iOw9Rgsn
Content-Type: multipart/mixed; boundary="------------Q25phdvNJg1cPKZsGF5nlia6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 David Hildenbrand <david@redhat.com>,
 Axel Rasmussen <axelrasmussen@google.com>, Peter Xu <peterx@redhat.com>
Message-ID: <0c07c5ad-01f3-0e74-a2cf-4a5198460c1b@gmail.com>
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
In-Reply-To: <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>

--------------Q25phdvNJg1cPKZsGF5nlia6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KT24gNi85LzIyIDIwOjQ4LCBNaWtlIEtyYXZldHogd3JvdGU6DQo+IE9u
IDYvOS8yMiAwNjoyNCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBIaSBNaWtlLA0K
Pj4NCj4+IE9uIDYvOS8yMiAwMTo0NSwgTWlrZSBLcmF2ZXR6IHdyb3RlOg0KPj4+IENsYXJp
ZnkgdGhhdCBtYWR2aXNlIG9ubHkgd29ya3Mgb24gZnVsbCBwYWdlcywgYW5kIHJlbW92ZSBy
ZWZlcmVuY2VzDQo+Pj4gdG8gJ2J5dGVzJy4NCj4+Pg0KPj4+IFVwZGF0ZSBNQURWX0RPTlRO
RUVEIGFuZCBNQURWX1JFTU9WRSBzZWN0aW9ucyB0byByZW1vdmUgbm90ZXMgdGhhdA0KPj4+
IEh1Z2VUTEIgbWFwcGluZ3MgYXJlIG5vdCBzdXBwb3J0ZWQuwqAgSW5kaWNhdGUgdGhlIHJl
bGVhc2VzIHdoZW4gdGhleQ0KPj4+IHdlcmUgZmlyc3Qgc3VwcG9ydGVkIGFzIHdlbGwgYXMg
YWxpZ25tZW50IHJlc3RyaWN0aW9ucy4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IE1pa2Ug
S3JhdmV0eiA8bWlrZS5rcmF2ZXR6QG9yYWNsZS5jb20+DQo+Pj4gQWNrZWQtYnk6IFBldGVy
IFh1IDxwZXRlcnhAcmVkaGF0LmNvbT4NCj4+DQo+PiBQbGVhc2UgY2hlY2sgc29tZSBjb21t
ZW50cyBiZWxvdy4NCj4+DQo+PiBUaGFua3MsDQo+Pg0KPiANCj4gVGhhbmsgeW91IQ0KPiAN
Cj4gQW5kLCBteSBhcG9sb2dpZXMgZm9yIG5vdCBsb29raW5nIGF0IGZvcm1hdHRpbmcgcmVx
dWlyZW1lbnRzLg0KPiBXaWxsIHNlbmQgYSB2NCBzaG9ydGx5Lg0KPiANCg0KSSB3YXMgcmV2
aXNpbmcgb2xkIHBhdGNoZXMuICBJJ20ganVzdCBwaW5naW5nIHlvdSBvbiB0aGlzLCB0byBt
YWtlIHN1cmUgDQppdCdzIG5vdCBsb3N0Lg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KDQotLSAN
CkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------Q25phdvNJg1cPKZsGF5nlia6--

--------------jCOjmL1x2fxhvJc1iOw9Rgsn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6r2UACgkQnowa+77/
2zIlQg/+IZBfq+HKaX7ixSraRGjgksCq4l/HzwBwEsSCFHYIs1sQbjDlC1AK+jce
QqQuP4wS7ZASHXLzkmeQW8NihWJKKxVoT7Umm96oR35qRKcIlqTiB48sJvIAAsP9
w/34gSt23USWLyYPoQNjYBEZjrZ7S7TC+63kiCfCEEpWG5W6xj6HxFdBALWQOZwd
4DwmWAGKnMvKoJofblQoUppXH3/jpArKa3dRqtgLBmrE7LO9ImRtTHOHl1hemeHx
VWk6oqDyHx0D0yl7dJmy6mob7FNxAVX98h4KUaOh9n9DwPGjk6/yBvkB0eMiFZzB
IYlN1dTwIhBG2f9BEweYnXglpRHs174LnG5/dho/ZxMsumRe4pbJeYMRO5jsyCQd
FcQSTVx91P07X/LMtJOmG9nXXThovW1Ex1Cj+j+25gv5GZCBU7MWzW/CJEt9mIz6
vrk7ItAGmZp570pJUNj4VISN2/1GJ+TvBdaiCPg/pyq9G+tY8COpzbjXk/LSn9m6
mJHMrAE/+lzwvMSEu9s8j2GkkDYA9Nh5vm/06YvqFSAh9HcF0xnU6fg4Oj/kbmzV
FLfWq6bc18mpS30UXsv72vNYsbgxUdVvse1WGmdrSBeENFHpdhqb3xr67Z0L5lvd
n1sRPF/rEz8Sb6n+m+WYaZHuI3hPHofvvS985ngDw3YsPONZhNA=
=vrKC
-----END PGP SIGNATURE-----

--------------jCOjmL1x2fxhvJc1iOw9Rgsn--
