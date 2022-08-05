Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BBF558B230
	for <lists+linux-man@lfdr.de>; Fri,  5 Aug 2022 23:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241801AbiHEV7r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Aug 2022 17:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241866AbiHEV7a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Aug 2022 17:59:30 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75F6A80527
        for <linux-man@vger.kernel.org>; Fri,  5 Aug 2022 14:56:57 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id z16so4546410wrh.12
        for <linux-man@vger.kernel.org>; Fri, 05 Aug 2022 14:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=vArmAzEpF8SQNszukUjrdXTEQNOuQjP+uBQVX+sRv0M=;
        b=Q5Uq/vNg2Ec7qHJOmlD+suESBuDRLVX4lv+M0oX/Mt4eRi2rEtJlDXp6mrX7+1ASaN
         gdrqy/Jl4G0Pukrcgr7XGsFt/8BgDhAuM87L3pGMNWZ/9k1vgJS9HJqfei8ZKaBHXayI
         v07BEPjZlu8vy723IBOBI50/mJE2ZLHkS8XGDcGA6JOVB+7Gri5NvxnTHWOE1QuoIxsU
         RE+j1qzoDYa6BmsTHreaoAaJWuVn2zN7mNe8YLr9soCG0T4x7+oDUdahSabw/mseDp8T
         L697gNVS6orvgBz4JM2TGlZ5lH+sSumpJLPaF/MzOBOJIbtPa6WAtfy+qDBQkoVArIcy
         EgjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=vArmAzEpF8SQNszukUjrdXTEQNOuQjP+uBQVX+sRv0M=;
        b=QZ8rZHb7b7rdqzptyH5scnKeMK7QYyn7uhPxjn9188NLKrqN28vFa1+1yGx3NYuZ1Y
         5koyy7YkcMpkol4EiU/W4JvO4z+P8wAhQa+hwydNU4NrDiqHvQ3i9sOq/q86lDli6WTn
         eFUum9Lfz/vQzW0dA4Ce2Ed55GtbDlm5w6nlccytX5IzvfJL+3KSUEaVPFi4ekcfQ5cG
         +bcJDoBqK74uwDx4CJ579FUwyrHSK7Yuy7766AFwtLwGYugjD8V0DeAv1lH9sy2U3Ibf
         W5Ai6C/G7ayb/UsT6KeMO83ICbPWIqSdSfpdnvOHzhMZdqHdTl8nMacKc/e8vwdG7b5H
         EbrA==
X-Gm-Message-State: ACgBeo1G9lH6PEk6VrGrDVhaT7eHMnzDYJaqeE5rqHW+o5g524icnwaC
        hwrLKu0h8739OCbkdIlpPfL+oJBQvHM=
X-Google-Smtp-Source: AA6agR45Bq24bUvd3q2t9uJt3/YNNj0D+gW5GJvvhMUKWciiIoIiSmXr9wwGA0Bj5SijyqQ3JsFYCw==
X-Received: by 2002:a05:6000:1d86:b0:21d:6433:1455 with SMTP id bk6-20020a0560001d8600b0021d64331455mr5371161wrb.514.1659736613623;
        Fri, 05 Aug 2022 14:56:53 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v21-20020a05600c15d500b003a4f73abfe4sm5326856wmf.8.2022.08.05.14.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Aug 2022 14:56:53 -0700 (PDT)
Message-ID: <e7f43a89-42ce-9bfa-d2fc-3be477330208@gmail.com>
Date:   Fri, 5 Aug 2022 23:56:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: italicizing pointer stars (was: [PATCH] getline.3: wfix.)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, enh <enh@google.com>
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
 <20220805192007.iwwu4e2n45hqw4cn@illithid>
 <d53c704c-c02a-7361-2cef-5cd97c5aa282@gmail.com>
 <20220805214949.jsdjstxsftk6mw75@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220805214949.jsdjstxsftk6mw75@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BVVO7j0HGfVFi5epkuRNcJiC"
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
--------------BVVO7j0HGfVFi5epkuRNcJiC
Content-Type: multipart/mixed; boundary="------------LU3iplCrrFUOR2w0bQGwlYf9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>, enh <enh@google.com>
Message-ID: <e7f43a89-42ce-9bfa-d2fc-3be477330208@gmail.com>
Subject: Re: italicizing pointer stars (was: [PATCH] getline.3: wfix.)
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
 <20220805192007.iwwu4e2n45hqw4cn@illithid>
 <d53c704c-c02a-7361-2cef-5cd97c5aa282@gmail.com>
 <20220805214949.jsdjstxsftk6mw75@illithid>
In-Reply-To: <20220805214949.jsdjstxsftk6mw75@illithid>

--------------LU3iplCrrFUOR2w0bQGwlYf9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gOC81LzIyIDIzOjQ5LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPj4gQW5kIHRoZSBkZWVwIHJhdGlvbmFsZSB3aHkgSSB3b3VsZCBsaWtlIHRvIGF2
b2lkIGhhdmluZyB0aGUgc3RhciBpbiBhDQo+PiBkaWZmZXJlbnQgZm9udCBpcyB0aGF0IGl0
IGNvdWxkIGJlIGNvbmZ1c2VkIHdpdGggdGhlIGdsb2ItbGlrZQ0KPj4gZXhwcmVzc2lvbnMg
dGhhdCB3ZSB1c2UgZm9yIGV4YW1wbGUgdG8gcmVmZXIgdG8gU1lTXyogbWFjcm9zLg0KPiAN
Cj4gVGhhdCBtYWtlcyBzZW5zZS4gIEkgdGhpbmsgaW5zdGVhZCBvZiBhZG9wdGluZyBnbG9i
IHN5bnRheCwgSSB3b3VsZCB1c2UNCj4gcXVvdGF0aW9uLCBidXQgcXVvdGF0aW9uIGluIG1h
big3KSBpcyBzbyBhd2t3YXJkIHRoYXQgbWFueSBwZW9wbGUgYWN0DQo+IGxpa2UgaXQncyB1
bmF2YWlsYWJsZS4gIFRoaXMgaXMganVzdCBvbmUgb2YgbWFueSByZWFzb25zIEkgdGhpbmsg
bWFuKDcpDQo+IHNob3VsZCBoYXZlIGEgYFFgIG1hY3JvIHRvIGZhY2lsaXRhdGUgaXQuDQoN
CldoYXQgZG8geW91IG1lYW4gYnkgcXVvdGF0aW9uPyAgSG93IHdvdWxkIHlvdSB0cmFuc2Zv
cm0gdGhlIGZvbGxvd2luZyANCih0YWtlbiBmcm9tIGNsb25lKDIpKToNCg0KICAgICAgICAj
aW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4gICAgLyogRGVmaW5pdGlvbiBvZiBTWVNfKiBjb25z
dGFudHMgKi8NCg0KPiANCj4+IERpZCBJIGRvZGdlIHRoZSBidWxsZXQ/DQo+IA0KPiBJIHRo
aW5rIHNvLiAgOikNCg0KOikNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFJlZ2FyZHMs
DQo+IEJyYW5kZW4NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------LU3iplCrrFUOR2w0bQGwlYf9--

--------------BVVO7j0HGfVFi5epkuRNcJiC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLtkh0ACgkQnowa+77/
2zKxWQ//e128V6kV1/TLHjvKXrzJc+1ZH+KsugIlMoCsvqKOzMrlgB/Z64Gd0Yoq
UK/9kmM4axCPC0pb9As5sj0Y+2l4UsarOayaCMm92gUkhLv2NKTQFztDD7VuiulJ
bCGtqARH9d8m8s9woUCusmdTs1T1h8gA4TZaf4PL+MUbwo903pSJ8ojCwa+arFzI
8w+LNDEIBHiG++wotaBq/9psz0Pu7hgIjnDY3h1WzzaQdmidTPayUCCT7HPXVFi+
cQLUDtSe/C0KWLxe0BrVpCNF6AAcE7iZcIUsKfzOT5EmwKX74iJuyxzDioDi47TQ
M/bSFxYpJRoOcyE/Lxu3TxUfgG3paQ4/3vfbXrM+++9foWkIHbmxPmXWannTGAi8
mmNzDqXdWV7UEnH+Mf/VMmNrUvzcCrYChdp/GsD9fNmnUdqiHMBGM9z8/KfJTAWc
vL2C7yeSOXG8Ru5CiKvKTpnbsIKe+yz4gc3BrpwKf04G2O7aDAtSzNhrhzACnOGt
0gtzZAbYcMyTL93wCexsSySRguZW9DsbtRDrDtVrnVe8KQKqfpDbsTiqV/cXEUX5
ZCHB1lm+6QvK8glXrMlQLA0Xr7b24q6PylOvSs+usatjwewT2kvIXB7nemiignb1
H5p3CehtfpKEjxgfA6QpQRwzap+lw0njQ0RPBdxZPOxYZLb1TeM=
=FNaU
-----END PGP SIGNATURE-----

--------------BVVO7j0HGfVFi5epkuRNcJiC--
