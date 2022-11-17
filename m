Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A71062CF63
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233521AbiKQATO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:19:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234000AbiKQATN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:19:13 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8A2245EF1
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:19:11 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so3189044wmb.2
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oTAfxZZjhb4jhySmY4768+E3IEiFoDIBd5H+xlnnhBM=;
        b=kDMnoBJoMg6jSdyicVj8N0XaxaSvX6Ti/YB+hGztiC5zuhzA4+VQhLLibl0TLejk4D
         n+4+n00B1fK2hBwkLPzoeJW2NDPX6SY5IQ7aw0vIuR0pvp05b9FGvdO0jAvsAWNup06Q
         RSz/BZt00wfpSJ7tk9I9Vk2O1ZIqoBtXe0aHarvPnmDKJKQ0AoW5DwH4+OurPAoSFCdO
         yacftpaG9CuBLvKv76FtQW32uS3mDE4n35gSirxDahmFe4VAxjJEYI9WMCvNiC1zhqve
         iK3XpAPn17L3lOOJk9nErf5fDirxg3OOssOPYEvfOti/dAMBk0usg6EpjA3Dnys65PNO
         ucxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oTAfxZZjhb4jhySmY4768+E3IEiFoDIBd5H+xlnnhBM=;
        b=u4FH/OfGxHWvu+Pu5h/t+efDqbO9hb72kF96IN5L3e2DkTZE8JxSwhbeljGZXd9HxU
         XVBJJ3yCrK/iLpwYsVTPLzF7EwyvgkfvC72muRu0DKUDCRcKGr2NYgR7vtl3mDdyPLgh
         7b4HRkLlhNDeMAWxSvbG5PSBrRIYtrjBWlHi+LMFYJYenax4DWZ6pYxcIIffYAVXbJxH
         WaKNx8fIPzpp08zzOzo78wxORvI2S2q5Nc/yr93sSVdNs6mu6lLEB7sUMpuM6stNvdlG
         ggrUzCdsh5sgLb2iTbBZChyImWkd2iQUiSYqXOgfXqkhPnpFu+3NdeLxeac9YENjV8F7
         BaGw==
X-Gm-Message-State: ANoB5pnwhSc3xUkZb1VGOZzJCaD4g1Mn8kvXrRZXy632l8fDCUIxhqWl
        DL3SpWjweFv9j++OrI4m+Kk=
X-Google-Smtp-Source: AA0mqf79bqEsZPKiIcy+jAPGbQiznNK63yXUROkjxCn0SN0LxTwbM1TWDndCoGVQSA21a9AMcPnAHw==
X-Received: by 2002:a05:600c:1c1b:b0:3cf:f2aa:4f13 with SMTP id j27-20020a05600c1c1b00b003cff2aa4f13mr3404126wms.114.1668644350436;
        Wed, 16 Nov 2022 16:19:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g10-20020a5d488a000000b0022cc3e67fc5sm16040609wrq.65.2022.11.16.16.19.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 16:19:09 -0800 (PST)
Message-ID: <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>
Date:   Thu, 17 Nov 2022 01:19:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Content-Language: en-US
To:     Thomas Voss <mail@thomasvoss.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
 <20221117001409.16744-1-mail@thomasvoss.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221117001409.16744-1-mail@thomasvoss.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tgzu6NE7eo1WPUzldtw3ASnW"
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
--------------tgzu6NE7eo1WPUzldtw3ASnW
Content-Type: multipart/mixed; boundary="------------XYaZ1XsjfgzVhcWdfqvl46Yg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Thomas Voss <mail@thomasvoss.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com
Message-ID: <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>
Subject: Re: [PATCH v2] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
References: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
 <20221117001409.16744-1-mail@thomasvoss.com>
In-Reply-To: <20221117001409.16744-1-mail@thomasvoss.com>

--------------XYaZ1XsjfgzVhcWdfqvl46Yg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpPbiAxMS8xNy8yMiAwMToxNCwgVGhvbWFzIFZvc3Mgd3JvdGU6DQo+
IFNpZ25lZC1vZmYtYnk6IFRob21hcyBWb3NzIDxtYWlsQHRob21hc3Zvc3MuY29tPg0KPiAt
LS0NCj4+IEJlaW5nICJjb25zdGFudCBleHByZXNzaW9ucyBvZiB0eXBlIGludCIgaXMgaXMg
dHJ1ZSBvZiBtb3N0IGNvbnN0YW50cyBpbiBDLCBzbw0KPj4gSSB0aGluayBJJ2Qgc2tpcCBp
dC4NCj4gDQo+IEkgdGhpbmsgaXQncyBwcmV0dHkgb2J2aW91cyB0byBtb3N0IHBlb3BsZSwg
YnV0IHRoZSBtYW51YWwgZG9lc24ndCBoYXZlIHRvbyBtdWNoDQo+IHRvIHNheSBzbyBpdCdz
IG5vdCBleGFjdGx5IHRha2luZyB1cCBhbnkgc3BhY2UgYW5kIEkgZG9uJ3QgdGhpbmsgaXQg
aHVydHMgdG8NCj4gbWVudGlvbiwgYnV0IGl0IGFsc28gZG9lc24ndCBtYXR0ZXIgdG9vIG11
Y2ggOlAuICBIZXJlJ3MgYSB2MiB3aXRoIHRoZSBjaGFuZ2VzDQo+IHlvdSBwb2ludGVkIG91
dC4NCj4gDQo+ICAgbWFuM2NvbnN0L0VYSVRfRkFJTFVSRS4zY29uc3QgfCAgMSArDQo+ICAg
bWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29uc3QgfCA1OSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKw0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygr
KQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBtYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNjb25z
dA0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBtYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNjb25z
dA0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjNjb25zdC9FWElUX0ZBSUxVUkUuM2NvbnN0IGIv
bWFuM2NvbnN0L0VYSVRfRkFJTFVSRS4zY29uc3QNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQN
Cj4gaW5kZXggMDAwMDAwMDAwLi5iYTBkNjJkZjkNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysg
Yi9tYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNjb25zdA0KPiBAQCAtMCwwICsxIEBADQo+ICsu
c28gbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29uc3QNCj4gZGlmZiAtLWdpdCBhL21hbjNj
b25zdC9FWElUX1NVQ0NFU1MuM2NvbnN0IGIvbWFuM2NvbnN0L0VYSVRfU1VDQ0VTUy4zY29u
c3QNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwLi5mMTI1YWZi
MzINCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9tYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNj
b25zdA0KPiBAQCAtMCwwICsxLDU5IEBADQo+ICsuXCIgQ29weXJpZ2h0IChjKSAyMDIyIGJ5
IFRob21hcyBWb3NzIDxtYWlsQHRob21hc3Zvc3MuY29tPg0KPiArLlwiDQo+ICsuXCIgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IExpbnV4LW1hbi1wYWdlcy1jb3B5bGVmdA0KPiArLlwi
DQo+ICsuXCINCj4gKy5USCBFWElUX1NVQ0NFU1MgM2NvbnN0IChkYXRlKSAiTGludXggbWFu
LXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gKy5TSCBOQU1FDQo+ICtFWElUX1NVQ0NFU1MsIEVY
SVRfRkFJTFVSRSBcLSB0ZXJtaW5hdGlvbiBzdGF0dXMgY29uc3RhbnRzDQo+ICsuU0ggTElC
UkFSWQ0KPiArU3RhbmRhcmQgQyBsaWJyYXJ5DQo+ICsuUkkgKCBsaWJjICkNCj4gKy5TSCBT
WU5PUFNJUw0KPiArLm5mDQo+ICsuQiAjaW5jbHVkZSA8c3RkbGliLmg+DQo+ICsuUFANCj4g
Ky5CUiAiI2RlZmluZSBFWElUX1NVQ0NFU1MgIiAgMA0KDQpJIHByZWZlciAyIHNwYWNlcyBi
ZXR3ZWVuIHRoZSBtYWNybyBuYW1lIGFuZCB0aGUgZXhwYW5zaW9uLCBzbyBwbGVhc2Ugb25l
IG1vcmUgDQpzcGFjZSBiZWZvcmUgdGhlIHF1b3RlLg0KDQo+ICsuQlIgIiNkZWZpbmUgRVhJ
VF9GQUlMVVJFICIgIC8qIG5vbnplcm8gKi8NCg0KIi8qIG5vbnplcm8gKi8iIG5lZWRzIHRv
IGJlIHF1b3RlZCB0b28uDQoNCj4gKy5maQ0KPiArLlNIIERFU0NSSVBUSU9ODQo+ICsuQiBF
WElUX1NVQ0NFU1MNCj4gK2FuZA0KPiArLkIgRVhJVF9GQUlMVVJFDQo+ICtyZXByZXNlbnQg
YSBzdWNjZXNzZnVsIGFuZCB1bnN1Y2Nlc3NmdWwgZXhpdCBzdGF0dXMgcmVzcGVjdGl2ZWx5
IGFuZCBjYW4gYmUgdXNlZA0KPiArYXMgYXJndW1lbnRzIHRvIHRoZQ0KPiArLkJSIGV4aXQg
KCkNCg0KLkJSIGV4aXQgKDMpDQoNCj4gK2Z1bmN0aW9uLg0KPiArLlNIIENPTkZPUk1JTkcg
VE8NCj4gK0M5OSBhbmQgbGF0ZXI7DQo+ICtQT1NJWC4xLTIwMDEgYW5kIGxhdGVyLg0KPiAr
LlNIIEVYQU1QTEVTDQo+ICsuXCIgU1JDIEJFR0lOIChFWElUX1NVQ0NFU1MuYykNCj4gKy5F
WA0KPiArI2luY2x1ZGUgPHN0ZGlvLmg+DQo+ICsjaW5jbHVkZSA8c3RkbGliLmg+DQo+ICsN
Cj4gK2ludA0KPiArbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQ0KPiArew0KPiArICAg
IEZJTEUgKmZwOw0KPiArDQo+ICsgICAgaWYgKGFyZ2MgIT0gMikgew0KPiArICAgICAgICBm
cHJpbnRmKHN0ZGVyciwgIlVzYWdlOiAlcyA8ZmlsZT5cZW4iLCBhcmd2WzBdKTsNCj4gKyAg
ICAgICAgZXhpdChFWElUX0ZBSUxVUkUpOw0KPiArICAgIH0NCj4gKw0KPiArICAgIGlmICgo
ZnAgPSBmb3Blbihhcmd2WzFdLCAiciIpKSA9PSBOVUxMKSB7DQo+ICsgICAgICAgIHBlcnJv
cihhcmd2WzFdKTsNCj4gKyAgICAgICAgZXhpdChFWElUX0ZBSUxVUkUpOw0KPiArICAgIH0N
Cj4gKw0KPiArICAgIC8qIE90aGVyIGNvZGUgb21pdHRlZCAqLw0KPiArDQo+ICsgICAgZmNs
b3NlKGZwKTsNCj4gKyAgICBleGl0KEVYSVRfU1VDQ0VTUyk7DQo+ICt9DQo+ICsuRUUNCj4g
Ky5cIiBTUkMgRU5EDQo+ICsuU0ggU0VFIEFMU08NCj4gKy5CUiBleGl0ICgzKQ0KDQpBbHNv
IGludGVyZXN0aW5nOg0KDQouQlIgc3lzZXhpdHMuaCAoM2hlYWQpDQoNCkNoZWVycywNCg0K
QWxleA0KDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------XYaZ1XsjfgzVhcWdfqvl46Yg--

--------------tgzu6NE7eo1WPUzldtw3ASnW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1ffQACgkQnowa+77/
2zKSqxAAnsqUeLIQeeze4TZV5q69M3gMlr9UzrQCf1Jc0Ugkmos1DEjHRaCoz0Dh
fWWDOPFVMJxG3lZWbBrj/8uXlKOt9VgplV3G6m/WjLmQND0kW/NZxAhISNwL0x5O
3RdzomCvzLxooh9GlzfzEC8ui0tNk6ISVRCxXyGpcpX+3ug48HSV4FaDrJx5C2B5
opUOgfm01OQ+G9QmE+HFKYsSujlz51xhe0KHtJREKFunj/xPAfknOPbDrAmt4Hqq
avsprfjigXaEVySJOgFheRM9RTx0kwKw3d0U3AdcwSNWy2mReelNFCrNKukWkLw8
QYWtVleZL+OwVNc/Ggw2qjDRN6mQ/uo/58sjQNncE3by+AQA7KyI8y9VEAWzmbrz
S+xa/fyRkLBXj6NVekRbXkurIMkH/TvqW9elTiNZJFe6rwViywHwgv1KOFXsjfGE
TwzopXffmUdOxNnupHiFvqdwAxpKg3P58MiJWFwJDm62tZPNxVpt75iAhMRaQ5OF
H9s9kaP18+MyB/NJ9drm+3v09e/5AVw5SrZ7uY54vsUn3YIjhniuCLTynmP0wnCR
lEOQokT63dGjV/H/6va/VsW59hpjp/9Vb8RoBgLLKXxPVQlsvwICOfGXGOc130Fl
DGJ5ZiGfhdUe0zm/XqoR0xw7QWNIBCtoaAifwMXcgCBtzAo9Mh0=
=Bc/8
-----END PGP SIGNATURE-----

--------------tgzu6NE7eo1WPUzldtw3ASnW--
