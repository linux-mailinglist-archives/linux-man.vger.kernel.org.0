Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A55F613EBC
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 21:12:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbiJaUML (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Oct 2022 16:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiJaUML (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Oct 2022 16:12:11 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27F3F100A
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:12:10 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5so7763919wmo.1
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 13:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TLuKz2xgJQKAR35gVnxeVT53fCA2Wo3U25UpH3ujrqs=;
        b=d5IhATjMPHbI+4U9JQkehFlC7xa5/BuJxEs9Twkq05fCGF8uQ+/OaL5+dag4hCR41C
         mut4rMR6XhuNkvLlAyFMgcSpRwmN/nSrPXBA7ubKmr9H4YLZc3zXpBpGWFX/cAVedRyb
         jTWrzakAE8LU8EMdOw2urNylGPNoVSmWFx1v/W49idkxkJA+OsYjssMa6FjpT4PH+pSk
         OZAa7WIy35hIvCmkDJYjEd2I95n9SaF2axwYdX3KzS5onhogiurMlrzOqkLxgSAx9SOJ
         FyC1Kh6wD+AIltCRE+uyirv2XzPP1nOSJiUbaGbWKU9hZ90WiYK25DmSMBCHsEmntsj+
         o6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TLuKz2xgJQKAR35gVnxeVT53fCA2Wo3U25UpH3ujrqs=;
        b=it/3zmCytVLoVXszryLbcVH5LprkSUlfJkjq4p7xUek9F0vUONnADcH6y7AwKgT56P
         j4PdVaAs8jPaHQi76mNuFcMF7lblJPsluZq08XoLzruODX2kWgMyjvb4gD3yUBP6U1y3
         HYqnjImMuzpKvTAxZEUpZfSvWKPZkBg19EnTdPzip1Jtg8ZHG8qWLNn9DxmkLjKSMxv1
         1Na+vXNFfjw3LxQK9J9L6277GTcYT0zAHr53vLL5jKdf8YKkkCytn0DtJCBjxLBN4gZN
         uPJyyq0/qSgXT1sE7rnaOZE0H3aPTnrezU31+jwsfabAbwJrX247f1A7R1VJ612ZtGTl
         ROTQ==
X-Gm-Message-State: ACrzQf3uLDnKoLNHaxrjIGnebjX8HbV1cGjC6dBPTGsFV81lZUgDaG/1
        KiMdr7tIRN01DMq6DUXyEnE=
X-Google-Smtp-Source: AMsMyM7p1nExoYq1MMRziGCCZHFdVMAJJ4GQjLpD86Gi6zj8crXddp1nI4Q1bCZDQ7wusn6hWTDqFQ==
X-Received: by 2002:a05:600c:2150:b0:3cf:6c05:b4ab with SMTP id v16-20020a05600c215000b003cf6c05b4abmr6426374wml.161.1667247128561;
        Mon, 31 Oct 2022 13:12:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o17-20020a5d4091000000b0022584c82c80sm8282349wrp.19.2022.10.31.13.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 13:12:07 -0700 (PDT)
Message-ID: <c10d20ea-f992-80d5-63c8-afdcf59b699c@gmail.com>
Date:   Mon, 31 Oct 2022 21:11:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v3 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-2-zokeefe@google.com>
 <715d8645-16ea-d230-0488-46ea01792bc6@gmail.com>
 <CAAa6QmTqSpct3hf0M6eGJx_n1-dF3oNZ17LWonqbnmAC1W6FwA@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmTqSpct3hf0M6eGJx_n1-dF3oNZ17LWonqbnmAC1W6FwA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------agIoct0ix0L9BzvXEB2eUwUC"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------agIoct0ix0L9BzvXEB2eUwUC
Content-Type: multipart/mixed; boundary="------------yy6Vz3mf90ZfXhD4LXWApOJm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <c10d20ea-f992-80d5-63c8-afdcf59b699c@gmail.com>
Subject: Re: [PATCH man-pages v3 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-2-zokeefe@google.com>
 <715d8645-16ea-d230-0488-46ea01792bc6@gmail.com>
 <CAAa6QmTqSpct3hf0M6eGJx_n1-dF3oNZ17LWonqbnmAC1W6FwA@mail.gmail.com>
In-Reply-To: <CAAa6QmTqSpct3hf0M6eGJx_n1-dF3oNZ17LWonqbnmAC1W6FwA@mail.gmail.com>

--------------yy6Vz3mf90ZfXhD4LXWApOJm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCENCg0KT24gMTAvMzEvMjIgMTc6MzMsIFphY2ggTydLZWVmZSB3cm90ZToNCj4g
DQo+IFRoYW5rcyBmb3IgdGFraW5nIHRoZSBwYXRjaCwgYW5kIHRoYW5rcyBmb3IgdGFraW5n
IHRoZSB0aW1lIHdpdGggdGhlDQo+IGV4cGxhbmF0aW9uISBHbGFkIEkgd2Fzbid0ICp0b28q
IGZhciBvZmYgOikNCg0KOikNCg0KQlRXLCBJIGp1c3QgZG9jdW1lbnRlZCB0aGUgbGludGVy
cyB0aGF0IGFyZSBhdmFpbGFibGUgaW4gdGhlIGJ1aWxkIHN5c3RlbS4NCkl0IHdvdWxkIGhh
dmUgY2F1Z2h0IGFuIGlzc3VlIGFuIHBhdGNoIDIvNCB0aGF0IEkgZGlkbid0IChhbHRob3Vn
aCBpdCByZXF1aXJlcyBhIA0KeWV0LXVucmVsZWFzZWQgZ3JvZmYgdmVyc2lvbjsgc28gaXQg
d29uJ3QgYmUgYXZhaWxhYmxlIHRvIGdlbmVyYWwgcHVibGljIHVudGlsIA0KaXQgaXMgcmVs
ZWFzZWQgaW4gYSBmZXcgbW9udGhzKS4NCllvdSBtYXkgd2FudCB0byBydW4gaXQgaW4gZnV0
dXJlIHBhdGNoZXMgOykNCg0KSSdsbCB0ZWxsIG1vcmUgYWJvdXQgaXQgaW4gdGhlIHRocmVh
ZCBmb3IgMi80DQoNCj4gDQo+IENoYW5nZXMgbG9vayBnb29kIHRvIG1lIC0gdGhhbmsgeW91
IQ0KDQpDaGVlcnMsDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------yy6Vz3mf90ZfXhD4LXWApOJm--

--------------agIoct0ix0L9BzvXEB2eUwUC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNgLA4ACgkQnowa+77/
2zJKrQ/+LqX3wIUQDvno91TYhQhkCUbjHY+1n6OP/q7yBA4G2o1GUiC3HKdri4Mn
jOOBGtS5ILUxgxnScfyjeCMmjjjtSRgj9/31wdEK3j+Dpsld/0NhfOnxmw8DERPW
nS27RtMjKk0uiggXu9qmHUPc5g4H2e7tbOtT/OsduUA9U1TQMd1yqLv/eKmb5ZOn
sub1/7GR59UhwDhYK5WkKkXGEdvaDDubkQOuAGdWdBiiSKhlM56DScJ0MI6XEAiJ
r5N72nTG8OPRMpb7HgE0ezqQL+dBe32rzVk9al1O9K/vAEJrjmO0wkt4MHAb0RTG
dkcYtdzphKSUYolrG2IDgxTLbNK3mkwyncQv16NY2nMOTahu21ixiUGdWhQcPuxd
oltO32zYSU4ZnjHzruzMhzXbhVEQzC/7VPlgP44SyaFOvGqOEmlgzoqCbkdf/Jmy
xExuCfQciW8UDoREa72B56t5a9GDXWsD0c+WNCOnU4f3+XfRXClT+G2nxe4rhs/B
7Y7PQ+K+e7jyAhPsHy0RdlJYLbhSTUVaiUYOtED+FhZ4rQjYwJw50xelNm8pWjZe
5Xg5tTQcHJbbl6uJ57IxLCQZEhC+bD1ihZwUenP5uMSYzeJNx7YjNWxzDWlqaj/P
L9zjHVAn7dQmzDOzQhkQYcPX63OKyXO6RJWASu9LHowft0r4Up8=
=ROSu
-----END PGP SIGNATURE-----

--------------agIoct0ix0L9BzvXEB2eUwUC--
