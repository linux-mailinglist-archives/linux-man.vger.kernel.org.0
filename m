Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC965446A5
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 10:57:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbiFII4Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jun 2022 04:56:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242195AbiFII4H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jun 2022 04:56:07 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1EAE14B2E5
        for <linux-man@vger.kernel.org>; Thu,  9 Jun 2022 01:54:25 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id q15so23381662wrc.11
        for <linux-man@vger.kernel.org>; Thu, 09 Jun 2022 01:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:cc:from
         :subject;
        bh=hNtYDU4rATnN2Lh/bviaDyyPhPzG40Wa184D3VTXwxU=;
        b=o5SpdYdaLuLdwjUBn0ATzvsMfL2+Zrtk9JhLuteEGwJ0+fGTPxx28Xzs5+zKrBOXJW
         bG+gQ/DyzXF8poj2YKZkOe5wXmGvH4ReleCh5xqYAgWqdd+PbH6P+QUIkHZ5qkDl5Djj
         W7jF3TJewqrfEe01wi/Q1AoexHrxS+fUyTikrCsGZFldbqGNN1ewIDmhzGgV8lxXVs8n
         l1K9aailVTvdMpw9Oy9fDE5B3ALht6qnhEWAq3kmnszW4hI46tMaYtUYL2Sb69aGTr2b
         jzcmiFfYzG48I0aAz1uBNYTz0mlZtbLYR3LJdAso2G91ko46HG9N9W9sOa3u11tDgIIq
         zRag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:from:subject;
        bh=hNtYDU4rATnN2Lh/bviaDyyPhPzG40Wa184D3VTXwxU=;
        b=q1aMRFcBwb/xxFY6MXi1DdzoJt6UKjOgcEwL8TuUgjIXlK5ZcPvx2ykratAeeLFWnT
         +0wJvzRr7n/NalY2JJ9b+apxxBdAe2OKgibXtlz6Hys2oHIgwqwmLn7TWGHCPxfq2efS
         8lF3N0BmloBxG/JN8L+k7K9F7qyQaC7NVp4VwBS8OXl61Uxhnt0affnmKCOf//7aW3SM
         DYKYBwDCJEAsJZ4edLHvyUOOy4B5U6hBMmFLS6hoqSDyWQzu5OcsODTYjqMq5SKTQJ2J
         8EQIh1L75DumcUTXi1aJCfP+ivBZGAZjQxkPwT9ACAXsTDSJBQkrTOZW4Av5bAQdVhzE
         M9kA==
X-Gm-Message-State: AOAM533h8txWa4LRx9IA+dYBZ4NF8ehi4ToQVle3oQdnzwG+9mfcptm5
        qPEu1Xhz/zjJnaupcr/G3dU/Q0V3i5+FCg==
X-Google-Smtp-Source: ABdhPJwZUb5OgtUtQI8iMMMAhLOaygPutRuxR/uNKsBtkHfPR0tOXQBdu5+0QpV5kSpTVh7sAzNpTQ==
X-Received: by 2002:adf:eacb:0:b0:217:dd5:445f with SMTP id o11-20020adfeacb000000b002170dd5445fmr24381870wrn.359.1654764863598;
        Thu, 09 Jun 2022 01:54:23 -0700 (PDT)
Received: from [192.168.42.187] ([31.221.238.245])
        by smtp.gmail.com with ESMTPSA id l37-20020a05600c1d2500b0039c5497deccsm2455307wms.1.2022.06.09.01.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 01:54:22 -0700 (PDT)
Message-ID: <761bb12f-31e0-369d-8315-d2e1545505c7@gmail.com>
Date:   Thu, 9 Jun 2022 10:57:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: manual pages for types
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0wB9eiAToee2ZCziy00mk9Mu"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0wB9eiAToee2ZCziy00mk9Mu
Content-Type: multipart/mixed; boundary="------------1uPv16IjpOxttwfJnBz9aMpf";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <761bb12f-31e0-369d-8315-d2e1545505c7@gmail.com>
Subject: manual pages for types

--------------1uPv16IjpOxttwfJnBz9aMpf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KSSBndWVzcyB5b3UgcmVtZW1iZXIgdGhlIGRpc2N1c3Npb24gYSBm
ZXcgbW9udGhzIGFnbyBhYm91dCBwYWdlcyBvZiB0aGUgDQpmb3JtIHN0YXR4LXN0cnVjdCgz
KS4gIEknbSBzdGlsbCBub3QgY29udmluY2VkIGJ5IHRoYXQsIGJlY2F1c2UgaXQgbWVhbnMg
DQptb3JlIHR5cGluZywgYW5kIGJlY2F1c2UgaXQgYnJlYWtzIHdpdGggZXhpc3RpbmcgcHJh
Y3RpY2UuICBsaWJic2QgZm9yIA0KZXhhbXBsZSBqdXN0IHB1dHMgdGltZXNwZWMoMykgaW4g
dGhlIGdsb2JhbCAzIHNlY3Rpb24sIHdpdGggbm8gLXN0cnVjdC4gDQogIEFsc28sIHNvbWUg
b3RoZXIgVU5JWCBzeXN0ZW1zIGRvbid0IHB1dCAtc3RydWN0LCBidXQgbW92ZSB0aGUgcGFn
ZXMgdG8gDQozVFlQRSwgYSBzdWJzZWN0aW9uIG9mIDMuICBJIHRoaW5rIEkgbGlrZSB0aGF0
IHdheSBtb3N0LCBhbmQgdGhhdCBhbHNvIA0KZml4ZXMgdGhlIGNvbmNlcm5zIHRoYXQgTWlj
aGFlbCBoYWQgYWJvdXQgc2hhZG93aW5nIG90aGVyIG1vcmUgaW1wb3J0YW50IA0KcGFnZXMs
IGJlY2F1c2Ugd2UgY2FuIGp1c3QgdGVsbCBtYW4tZGIgdG8gc3BlY2lmeSB0aGF0IDNUWVBF
IHNob3VsZCBiZSANCm9uZSBvZiB0aGUgbGFzdCB0aGluZ3MgdG8gY2hlY2suICBXaGF0IGRv
IHlvdSB0aGluayBhYm91dCBpdD8NCg0KSSB0aGluayBJJ20gZ29pbmcgdG8gbW92ZSBhbGwg
dHlwZSBwYWdlcyB0byAzVFlQRS4gIEFsc28sIEkgZG9uJ3Qga25vdyANCmlmIEkgc2hvdWxk
IHVzZSBhIHNlcGFyYXRlIGRpcmVjdG9yeSBmb3IgdGhhdCBvciB1c2UgbWFuMyBhbmQganVz
dCANCmNoYW5nZSB0aGUgZXh0ZW5zaW9uLiAgV2hhdCB3b3VsZCB5b3UgZG8/ICBJIHNlZSB0
aGF0IGRlYmlhbiBqdXN0IHB1dHMgDQpldmVyeXRoaW5nIGluIG1hbj8gYW5kIHRoZW4gb25s
eSBjaGFuZ2VzIHRoZSBmaWxlIGV4dGVuc2lvbiwgYnV0IHRoZXJlIA0KYXJlIG90aGVyIHN5
c3RlbXMgdGhhdCBhbHNvIGNoYW5nZSBkaXJzLCByaWdodD8gIFdoYXQgc2hvdWxkIHdlIGRv
IHVwc3RyZWFtPw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21h
cg0KTGludXggbWFuLXBhZ2VzIGNvbWFpbnRhaW5lcjsgaHR0cDovL3d3dy5rZXJuZWwub3Jn
L2RvYy9tYW4tcGFnZXMvDQpodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLw0K

--------------1uPv16IjpOxttwfJnBz9aMpf--

--------------0wB9eiAToee2ZCziy00mk9Mu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKhteMACgkQnowa+77/
2zLD6RAAioSrYefO5jqePaxPo38RzovpWgJebMW1XXWEK/jXjwjQlkibo38gwIKM
I+Co0Y/wCX+2jYFinUawsCbBJbGhnp9lg5OkuWeXZYQIWEgxWY4kPak1sZv/dPCT
ELbyrYiW3kLC2ny9shqXeyLrBcDdGeVUiVMm+rxru0HWYt6gvLdq8+n/kOGkwvuL
jcTjuhIqV7B+B8uJ9w5AFcBYYvLxHF4nHeVJ/vdhaSjx/I0iiJCBNStGh4nSTZ3v
GUSvfTx4v54pt6cJFCwjmaWwmgGUKBizFFtsWHjv1NBYVuQrP+y/TkJVl9uyebqb
yRQCx4N++U2ukqS1gB5V2+tCsUgK3c9U+jhS0kPvZdvfvntwAVaGXlZ2pvMcXBhS
Un+dmtasAsNhJhUGXHv3YuuVG619dWLjqfnjZFcvVhfPteRrSufKoAQhtlSwMbHZ
jcZbu+JeOrgP5UhfMmRlbLUTfCKeTasD7dtTxxwZpbQyES+qc4vI1zlnFBNJOEzr
Bqzcp95kWBmK1bQid7fOjcfSxHGwcms+fXyIj6QYn0Hz0Z5yiM38cEtHWqgw2J70
GKEjJaag+WuNOkA4yuu+9/l8q9N5NYplJFh3/7QnvszgIH4sMaEe3z040pnimOVF
oA5wxoXy1/ybVRMhThScQ5aZIZEvyV0mqv1CSYg36Ja5J4MC04A=
=zfOg
-----END PGP SIGNATURE-----

--------------0wB9eiAToee2ZCziy00mk9Mu--
