Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 299AA62CF91
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:28:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233394AbiKQA2R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:28:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232521AbiKQA2Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:28:16 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9935263B9D
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:28:15 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so3209650wmb.2
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fpujsie/nfEOeYeVxTSP4o6WyNfgzQuD8d49hupINdQ=;
        b=P7vVwJyeEWS4SkOqawp9kZc1tbrSBR+zbYMWtH/85kYEY5+Ntgez5//XK6DsxLdBuN
         SDFv08GDqlBffOyDhzWPaBhM29ajR0KQXn4XbZNfO3tbGN0fimrPBuGlHRYLj80d+xmf
         rt7RCWrrE/Ja1Oi99LFWtnb9fUJmBhnA0a1rnuXHUYAvCY/pnjW7Koj90stYmPhtvS58
         aEYZB8c1zNTMXDcbIWF9Y6fd7/nW0N+Nttp8qkHrtCU0bmb5sMhKV9kU/9xYkY2GKXJ2
         TRS/RY4F9VVU1BHKzg65HVoiRLEQVpKNvY7Fci58ps/9ft/UVJBTs8qIRam90k2MgIdC
         Y4/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fpujsie/nfEOeYeVxTSP4o6WyNfgzQuD8d49hupINdQ=;
        b=afvDRIHk0dGGk6n5Wf1CrBphDhqNy3EyjMgq7Tegml3A+/lsmYp77zGCB8pdVG3IQs
         B7NlfUTGfCjJmBdO7PQycFGhf7aaOYjNIp621nUNwJ0f+R7xw0aoHVLz6DnM8Nq301Aa
         wY7mGRzAD+TLwwGwq9QbL6+dmUIb/cCoVNiOVPSXRu2Bt4dQRaUGhQAmQ1Y6lzOg2UZ2
         TK1G3tXDQ466ZvOuYyvBam+CXpUgNw9L+3sgzwmJdxE1dpIj56pmuAqhO4BiQ66Q0Z3q
         aauoy4oKcgDDJJIhA296vjwZAgD4YRA1bP5B2q6tsWZf+fKYlky5Z0GflQtfxsTmsDc8
         tjUw==
X-Gm-Message-State: ANoB5pkV7ytRF4FfTE1PMz/+dUaiZ3ymCEn3xWa5Y8DOGG0bpsOWoogu
        FUXVjoqfxE+zkBLmTUn7Qjw=
X-Google-Smtp-Source: AA0mqf7h4bjirKf+7OifGSFcxtMRGvIZIPhWaN3kDN0RTYAUNQdmQhL8XMN3eAUNeo5ftPYiB3as9A==
X-Received: by 2002:a05:600c:5388:b0:3cf:37b1:e581 with SMTP id hg8-20020a05600c538800b003cf37b1e581mr73839wmb.96.1668644894203;
        Wed, 16 Nov 2022 16:28:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a10-20020a05600c348a00b003cf71b1f66csm3860120wmq.0.2022.11.16.16.28.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 16:28:13 -0800 (PST)
Message-ID: <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
Date:   Thu, 17 Nov 2022 01:28:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man:
 rst2man: .TH 5th field shouldn't be empty)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Colin Watson <cjwatson@debian.org>,
        Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff@gnu.org
Cc:     Michael Haardt <michael@moria.de>,
        Andries Brouwer <Andries.Brouwer@cwi.nl>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        "Andries E. Brouwer" <aeb@cwi.nl>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
In-Reply-To: <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gHJlAGqGQkSlj7ScgSZWKUKk"
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
--------------gHJlAGqGQkSlj7ScgSZWKUKk
Content-Type: multipart/mixed; boundary="------------TDOUsGjfJHZ99hXHe9QYPGz7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Colin Watson <cjwatson@debian.org>, Ingo Schwarze <schwarze@usta.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>, groff@gnu.org
Cc: Michael Haardt <michael@moria.de>,
 Andries Brouwer <Andries.Brouwer@cwi.nl>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
 "Andries E. Brouwer" <aeb@cwi.nl>
Message-ID: <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
Subject: Re: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man:
 rst2man: .TH 5th field shouldn't be empty)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
In-Reply-To: <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>

--------------TDOUsGjfJHZ99hXHe9QYPGz7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ29saW4sIEluZ28sIGFuZCBCcmFuZGVuLA0KDQpPbiAxMS8xNy8yMiAwMTowNiwgRy4g
QnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCiA+PiBJIHVzZWQgdGVtcG9yYXJpbHkgdGhlIHRl
cm0gW3N1Yl1jaGFwdGVyIHRvIHNlZSBob3cgaXQgZml0cy4NCiA+IEkgdGhpbmsgdGhlIGFk
b3B0aW9uIG9mIHRoZSB0ZXJtIChzdWIpY2hhcHRlciBoYXMgYSBwb3RlbnRpYWwgYmVuZWZp
dCBpbg0KID4gdGhhdCBpdCByZW1vdmVzIGEgdGVybWlub2xvZ2ljYWwgY29sbGlzaW9uIHdp
dGggKHN1YilzZWN0aW9ucyBhcw0KID4gc3ViZGl2aXNpb25zIG9mIGluZGl2aWR1YWwgbWFu
IHBhZ2VzIChtYW46IFNILCBTUzsgbWRvYzogU2gsIFNzKS4NCiA+DQogPiBJZiB0aGlzIHRl
cm1pbm9sb2dpY2FsIHJlZm9ybSBpcyBhZG9wdGVkLCBJIHRoaW5rIGl0IHNob3VsZCBiZSBk
b25lDQogPiBhY3Jvc3MgYWxsIG9mICgxKSBMaW51eCBtYW4tcGFnZXMsICgyKSBncm9mZiwg
KDMpIG1hbmRvYywgYW5kICg0KQ0KID4gbWFuLWRiLiAgSWYgd2UgY2FuJ3Qgc3BlYWsgd2l0
aCBvbmUgdm9pY2Ugb24gdGhpcyB0aGVuIEkgdGhpbmsgaXQncw0KID4gYmV0dGVyIG5vdCB0
byB1bmRlcnRha2UgdGhhdCByZWZvcm0gYXQgYWxsLCB0byBhdm9pZCBmcnVzdHJhdGluZyB0
aGUNCiA+IGRpc2NvdmVyYWJpbHR5IG9mIG1hbiBwYWdlcy4NCiA+DQogPiBQb3NzaWJseSB0
aGUgYmlnZ2VzdCBiYXJyaWVyIHRvIHRoaXMgaXMgdGhlIG1uZW1vbmljIGFuZCBkb2N1bWVu
dGF0aW9uDQogPiBvZiB0aGUgbWFuKDEpICctcycgb3B0aW9uLiAgSW4gbWFuLWRiIG1hbiwg
Jy1DJyBhbmQgJy1jJyBhcmUgYm90aA0KID4gYWxyZWFkeSBpbiB1c2UuDQoNClRoYXQgY2Fu
IGJlIGRvY3VtZW50ZWQgYXMgYSBoaXN0b3JpY2FsIGRldGFpbCBpbiB0aGUgZG9jdW1lbnRh
dGlvbiBvZiB0aGUgb3B0aW9uIA0KaXRzZWxmLCB3aGljaCBtYWtlcyBzZW5zZSwgYXMgdG8g
YXZvaWQgcHJvZ3JhbW1lcnMgdGhhdCBoYXZlIGhlYXJkIG9mIHNlY3Rpb25zIA0KdG8gdHJ5
IHRvIGdyZXAgc2VjdGlvbiBhbmQgZmluZCBub3RoaW5nLg0KDQogPg0KID4gUHJvYmFibHkg
YSBnb29kIGlkZWEgdG8gbG9vcCBDb2xpbiBXYXRzb24gaW4gb24gdGhpcyBwcm9wb3NhbCBv
ZiB5b3VycywNCiA+IHdoaWNoIGlzIHN0cmljdGx5IHNwZWFraW5nIHNldmVyYWJsZSBmcm9t
IHRoZSBiZWxvdy4NCg0KWWVzLCBlc3BlY2lhbGx5IHNpbmNlIHBhcnQgb2YgdGhlIGRpc2N1
c3Npb24gaXMgaW4gbGludXgtbWFuQCAoSSdtIG5vdCBzdXJlIGlmIA0KaGUgcmVhZHMgaXQ7
IEkgdGhpbmsgbm90KSBhbmQgbm90IGluIGdyb2ZmQCAod2hpY2ggaGUgcmVhZHMsIEFGQUlL
KS4gIFNvLCBJJ2xsIA0KbWVyZ2UgdGhlIDIgZGlzY3Vzc2lvbnMgYWJvdXQgdGhpcyBieSBm
b3J3YXJkaW5nIHRoZSAyIG1vc3QgaW50ZXJlc3Rpbmcgb3RoZXIgDQplbWFpbHMgYmVsb3cu
DQoNClNvLCBkb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gYWxsIG9mIHVzIHRvIHN0YXJ0IHVzaW5n
IHRoZSB0ZXJtIGNoYXB0ZXIgZm9yIA0KZGl2aXNpb25zIG9mIHRoZSBtYW4tcGFnZXMgc2lu
Z2xlIHZvbHVtZSwgc28gdGhhdCB0aGUgbWFudWFsIHBhZ2VzIGluIExpbnV4IGFyZSANCm9y
Z2FuaXplZCBmcm9tIG5vdyBvbiBpbiBjaGFwdGVycyAxIHRvIDkgaW5zdGVhZCBvZiBzZWN0
aW9ucyAxIHRvIDk/DQoNCkNoZWVycywNCg0KQWxleA0KDQoNCi0tLS0tLS0tIEZvcndhcmRl
ZCBNZXNzYWdlIC0tLS0tLS0tDQpTdWJqZWN0OiBDaGFwdGVycyBvZiB0aGUgbWFudWFsICh3
YXM6IEJ1ZyMxMDE4NzM3OiAvdXNyL2Jpbi9yc3QybWFuOiByc3QybWFuOiANCi5USCA1dGgg
ZmllbGQgc2hvdWxkbid0IGJlIGVtcHR5KQ0KRGF0ZTogV2VkLCAxNiBOb3YgMjAyMiAyMzo0
NjoxMyArMDEwMA0KRnJvbTogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFp
bC5jb20+DQpUbzogRy4gQnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVuLnJvYmluc29uQGdt
YWlsLmNvbT4NCkNDOiBncm9mZkBnbnUub3JnLCBNaWNoYWVsIEhhYXJkdCA8bWljaGFlbEBt
b3JpYS5kZT4sIEFuZHJpZXMgQnJvdXdlciANCjxBbmRyaWVzLkJyb3V3ZXJAY3dpLm5sPiwg
TWljaGFlbCBLZXJyaXNrIDxtdGsubWFucGFnZXNAZ21haWwuY29tPiwgRG91Z2xhcyANCk1j
SWxyb3kgPGRvdWdsYXMubWNpbHJveUBkYXJ0bW91dGguZWR1Pg0KDQpIaSBCcmFuZGVuIQ0K
DQpPbiA5LzcvMjIgMDA6MTMsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KID4+PiBJJ3Zl
IHNlZW4gc3BvcmFkaWNhbGx5IHJlZmVyZW5jZXMgdG8gdGhlIG51bWJlcnMgYXMgY2hhcHRl
cnMsIHByb2JhYmx5DQogPj4+IGZyb20gd2hlbiB0aGUgbWFudWFsIHdhcyBhIHByb3BlciBi
b29rLCBidXQgdGhhdCB0ZXJtIHNlZW1zIHRvIGhhdmUNCiA+Pj4gZmFsbGVuIGluIHVzZS4N
CiA+Pg0KID4+IEkgZG9uJ3QgcmVjYWxsIHNlZWluZyB0aGlzLiAgV2hpbGUgbm90IG15IHBy
ZWZlcmVuY2UsIEkgd291bGQgcmVnYXJkIGl0DQogPj4gYXMgYW4gZXhjdXNhYmxlIGlubm92
YXRpb24gaW4gcmVzcG9uc2UgdG8gYW4gdW5oZWxwZnVsIG92ZXJsYXAgaW4gcHJpb3INCiA+
PiB1c2FnZS4NCiA+DQogPiBJIGRvbid0IHJlbWVtYmVyIHdoZXJlIEkndmUgc2VlbiB0aGlz
LiAgSSBzZWVtIHRvIHJlY2FsbCBpdCwgYnV0IG1heWJlIGl0J3MganVzdA0KID4gYSBnbGl0
Y2ggaW4gbXkgbWVtb3J5LiAgSXQgd291bGQgY2VydGFpbmx5IHNpbXBsaWZ5IG5vbWVuY2xh
dHVyZS4gIElmIHdlIGNvbWUgdXANCiA+IHdpdGggYSBnb29kIHRlcm0gZm9yIHN1YnNlY3Rp
b25zIHN1Y2ggYXMgM2hlYWQsIEkgbWlnaHQgc3RhcnQgdXNpbmcgdGhlIHRlcm0NCiA+IGNv
bGxvcXVpYWxseS4gIERvZXMgc3ViY2hhcHRlciBzb3VuZCBnb29kIHRvIHlvdT8NCiA+DQoN
Cg0KSSd2ZSBnb3QgZ29vZCBuZXdzIGZvciB5b3UuICBJIHN0YXJ0ZWQgd3JpdGluZyBpbnRy
bygzdHlwZSksIGFmdGVyIEkgZ290IHRoZSANCmZpcnN0IGNvbnRyaWJ1dGlvbiBvZiBhIG5l
dyBwYWdlIHRvIGNoYXB0ZXIgM3R5cGUgb2YgdGhlIG1hbnVhbC4NCg0KQW5kIHdoaWxlIGRv
aW5nIGl0LCBJIGZvdW5kIGEgcGxhY2Ugd2hlcmUgdGhlIHRlcm0gJ2NoYXB0ZXInIGlzIHVz
ZWQuICBJdCdzIHZlcnkgDQpsaWtlbHkgdGhhdCB0aGVyZSdzIHdoZXJlIEkgc2F3IGl0IHRo
ZSBvdGhlciB0aW1lLiAgSXQncyBpbiBhIGNvbW1lbnQgaW4gdGhlIA0KaW50cm8oMykgcGFn
ZSwgd2hpY2ggc2VlbXMgdG8gYmUgdGhlcmUgc2luY2UgdGhlcmUncyBnaXQgaGlzdG9yeS4N
Cg0KVGhlIGF1dGhvciBvZiB0aGUgcGFnZSBzZWVtcyB0byBiZSBNaWNoYWVsIEhhYXJkdDsg
aGlzIGxhc3QgY29tbWl0IHRvIHRoZSANCm1hbi1wYWdlcyBpcyBmcm9tIDIwMTUsIHNvIEkg
Z3Vlc3MgaGlzIGVtYWlsIGlzIHN0aWxsIGFjdGl2ZS4gIE1heWJlIGhlIGNhbiANCmNvbW1l
bnQuICBJIGFsc28gQ0NlZCBhZWIgYW5kIG10aywgYXMgdGhleSBtYWludGFpbmVkIHRoZSBw
YWdlcyBiZWZvcmUgbWUgYW5kIA0KbWF5IGtub3cgaWYgdGhhdCB0ZXJtIHdhcyBpbiB1c2Ug
YXQgdGhlIHRpbWUuDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KDQoNCg0KDQotLS0tLS0t
LSBGb3J3YXJkZWQgTWVzc2FnZSAtLS0tLS0tLQ0KU3ViamVjdDogUmU6IENoYXB0ZXJzIG9m
IHRoZSBtYW51YWwgKHdhczogQnVnIzEwMTg3Mzc6IC91c3IvYmluL3JzdDJtYW46IA0KcnN0
Mm1hbjogLlRIIDV0aCBmaWVsZCBzaG91bGRuJ3QgYmUgZW1wdHkpDQpEYXRlOiBUaHUsIDE3
IE5vdiAyMDIyIDAwOjQ3OjQzICswMTAwDQpGcm9tOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4
Lm1hbnBhZ2VzQGdtYWlsLmNvbT4NClRvOiBBbmRyaWVzIEUuIEJyb3V3ZXIgPGFlYkBjd2ku
bmw+DQpDQzogRy4gQnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVuLnJvYmluc29uQGdtYWls
LmNvbT4sIGdyb2ZmQGdudS5vcmcsIE1pY2hhZWwgDQpIYWFyZHQgPG1pY2hhZWxAbW9yaWEu
ZGU+LCBBbmRyaWVzIEJyb3V3ZXIgPEFuZHJpZXMuQnJvdXdlckBjd2kubmw+LCBNaWNoYWVs
IA0KS2VycmlzayA8bXRrLm1hbnBhZ2VzQGdtYWlsLmNvbT4sIERvdWdsYXMgTWNJbHJveSA8
ZG91Z2xhcy5tY2lscm95QGRhcnRtb3V0aC5lZHU+DQoNCkhpIEFuZHJpZXMhDQoNCk9uIDEx
LzE3LzIyIDAwOjQwLCBBbmRyaWVzIEUuIEJyb3V3ZXIgd3JvdGU6DQogPg0KID4+IE9uIDkv
Ny8yMiAwMDoxMywgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQogPj4+Pj4gSSd2ZSBzZWVu
IHNwb3JhZGljYWxseSByZWZlcmVuY2VzIHRvIHRoZSBudW1iZXJzIGFzIGNoYXB0ZXJzLCBw
cm9iYWJseQ0KID4+Pj4+IGZyb20gd2hlbiB0aGUgbWFudWFsIHdhcyBhIHByb3BlciBib29r
LCBidXQgdGhhdCB0ZXJtIHNlZW1zIHRvIGhhdmUNCiA+Pj4+PiBmYWxsZW4gaW4gdXNlLg0K
ID4NCiA+IFVuaXggUHJvZ3JhbW1lcidzIE1hbnVhbCAoNC4yIEJTRCkgQXVndXN0LCAxOTgz
DQogPiBWb2x1bWUgMQ0KID4gQ2hhcHRlciBJOiBDb21tYW5kczogaW50cm8sIGFkYiwgLi4u
DQogPiBDaGFwdGVyIElJOiBTeXN0ZW0gY2FsbHM6IGludHJvLCBhY2NlcHQsIGFjY2Vzcywg
Li4uDQogPiBDaGFwdGVyIElJSTogU3Vicm91dGluZXM6IGludHJvLCBhYm9ydCwgYWJzLCAu
Li4NCiA+IENoYXB0ZXIgSVY6IFNwZWNpYWwgZmlsZXM6IGludHJvLCBhY2MsIC4uLg0KID4g
Q2hhcHRlciBWOiBGaWxlIGZvcm1hdHMgYW5kIGNvbnZlbnRpb25zOiBhLm91dCwgLi4uDQog
PiBDaGFwdGVyIFZJOiBHYW1lczogYWFyZHZhcmssIGFkdmVudHVyZSwgLi4uDQogPiBDaGFw
dGVyIFZJSTogTWFjcm8gcGFja2FnZXMgYW5kIGxhbmd1YWdlIGNvbnZlbnRpb25zOiBpbnRy
bywgYXNjaWksIC4uLg0KID4gQ2hhcHRlciBWSUlJOiBNYWludGVuYW5jZSBjb21tYW5kcyBh
bmQgcHJvY2VkdXJlczogaW50cm8sIGFjLCAuLi4NCiA+DQogPiBTZXZlbnRoIEVkaXRpb24s
IEphbnVhcnksIDE5NzkNCiA+IFZvbHVtZSAyQQ0KID4gMSBhbmQgMjogR2VuZXJhbCBXb3Jr
cw0KID4gMyB0aHJvdWdoIDc6IEdldHRpbmcgU3RhcnRlZA0KID4gOCB0aHJvdWdoIDEzOiBE
b2N1bWVudCBQcmVwYXJhdGlvbg0KID4gMTQgdGhyb3VnaCAxODogUHJvZ3JhbW1pbmcNCiA+
DQogPiBWb2x1bWUgMkI6DQogPiAxOSB0aHJvdWdoIDI4OiBTdXBwb3J0aW5nIFRvb2xzIGFu
ZCBMYW5ndWFnZXMNCiA+IDI5IHRocm91Z2ggMzg6IEltcGxlbWVudGF0aW9uLCBNYWludGVu
YW5jZSBhbmQgTWlzY2VsbGFuZW91cw0KID4gLi4uDQogPg0KID4gVm9sdW1lIDEgaGFkIGNo
YXB0ZXJzLiBUaGUgbGF0ZXIgdm9sdW1lcyBoYWQgbnVtYmVyZWQgZG9jdW1lbnRzLg0KDQpU
aGFua3MgZm9yIHRoZSBwcm9tcHQgcmVwbHkhDQonY2hhcHRlcicgZGVmaW5pdGVseSBtYWtl
cyBtb3JlIHNlbnNlLCBhdCBsZWFzdCBjb25zaWRlcmluZyB0aGUgbWFudWFsIGFzIGEgDQpi
b29rLiAgU2luY2UgaXQgc2VlbXMgdG8gaGF2ZSBiZWVuIGluIGdlbmVyYWwgdXNlIGluIHRo
ZSBwYXN0LCBpdCdzIG5vdCBzbyBtdWNoIA0Kb2YgYSBicmVha2luZyBjaGFuZ2UgdG8gc3Rh
cnQgdXNpbmcgaXQgbm93IGFnYWluLiAgU28sIHRvIGF2b2lkIGFtYmlndWl0eSANCmJldHdl
ZW4gc2VjdGlvbiByZWZlcnJpbmcgdG8gYSBjaGFwdGVyIG9yIHNlY3Rpb24gcmVmZXJyaW5n
IHRvIHBhcnQgb2YgYSBwYWdlLCANCkknbGwgc3RhcnQgdXNpbmcgdGhlIHRlcm0gW3N1Yl1j
aGFwdGVyIGNvbnNpc3RlbnRseS4NCg0KV2l0aCB0aW1lLCBJIGV4cGVjdCB0byByZXBsYWNl
IGFsbCBvY2N1cnJlbmNlcyBvZiBzZWN0aW9uIHRoYXQgc2hvdWxkIGJlIGNoYXB0ZXIgDQpp
biB0aGUgbWFuLXBhZ2VzLg0KDQogPg0KID4gQW5kcmllcw0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------TDOUsGjfJHZ99hXHe9QYPGz7--

--------------gHJlAGqGQkSlj7ScgSZWKUKk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1gBwACgkQnowa+77/
2zIl9g//d/zFzM0w46IwjRopYD9fPXGSoGgBMRBc2S6HZMjsaaYeiDSaVJojkiO2
ZBq+Os4BD8xbmRtVl7C8rSF3C+5yjiN11NEBfN1md/Bl2H+Z8aLTRASZPzlmE5A/
y3OPc+XaDpdDHw89fQEIIyRoAg3L0K3TkU5Alx9mFI6amEB3a1lQkB+YQF56YJlU
LuE2dlWT+eO0cKFXRZ1ir/xgHkxl+eh3yRmp9Qvi5P5nYYON3tGbIm2DSuMz5pAk
61NOGqN4a5Uu6+meqEhWk1yGyNwm1JtnwRtKx0j8Nse+sts6oELs/y8GL+T+KGbW
C1BGeJSJrb8V5g5rTsIoU1cs7DBrMikBF9zt3UI60KHp64H1jZAW4mYjhI2iX+Ni
/9X73ABo8aPdh8H9heL/eH5qFDdDK4im+GC43Cq91dcFu9pnWwjyb6myck7yoZPO
91v3AuYaVBcEIxXe7wp9ygSkzj0uCPMeLOuuozUyZK89tvn9BsIYHwLzKVE1H9gq
SZgAwx//IMRyHsXuXgXc7KEdZmE43r1gyz+Y8ZkqudAyF0pTqQgNk2i3OB+jEh+W
NyUl0NynyJy7oHaYYnKND195COQPzS81TrudjnnGKdK+Rf4K9Nb+t2ptE5HDAvFg
DOFZYapIZmM7cuREicsEWLUjQg6X3hvtoP70TfGxr85JgDfWxNU=
=rCF6
-----END PGP SIGNATURE-----

--------------gHJlAGqGQkSlj7ScgSZWKUKk--
