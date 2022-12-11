Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5763C64951C
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 17:40:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbiLKQkQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 11:40:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229696AbiLKQkP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 11:40:15 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFB0CDFA0
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:40:13 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id h11so9681700wrw.13
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUr+1X+6m3IKTpzJgPeJhyqExMnPpdRsmYz4VCSRmN8=;
        b=LPiq53iVTwIxuha0zJsLrDt8N8H5O485ZtAtEUxQ0AmO8S9GZgHJPXD8dyr18O+1f9
         hixTlbg8iGDX7+tmIv/FFJrQRod7OFq4VFyt64FcACaT4FLOliTPavs3qr6CmKYqN1h9
         QhAwy3ZHkXqzOqzJkufnwkCJ2jDyE5QSpPf3EflJ7lSX+6dNb8fhvbFA8viNjtUNZk56
         2zeN08Aws3nXerhqpI/hSzS0Mh9ATyeOz3fLyYuPYBNlQkh/5XGwYjCvALNoHqAH1epK
         1UeblxBQWgUGZdRRqz+Nt6nASEWlyK5LjpR3u6jyD0UjDT0W9m8SDtlEEd6AVWn/TU44
         rhfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zUr+1X+6m3IKTpzJgPeJhyqExMnPpdRsmYz4VCSRmN8=;
        b=E6QQrCIsrQe7dQo06FmdzdiZgssFPOFE9mYmzNbz8f8+09cuGFJ2ZCnmzSWH/enXtr
         crZIl2vQqJlGzAZNf30iBkFwf93XAMZLdjY6dF2PNAkqgegxHePDAFx9gsqUD8z8nw8O
         ilGl2blnwaw7dhjy+98INvy8wkUAsFSX2dwC1UdfeWaYqjXZL04vzqMMA4+vw9FigC9E
         KTldMWbglViOBpkAMZvXRv/iec8hRiaHqfjc4EQSeVwpasJFWcWU2SePbO7+7ag9mQAm
         Tjzj/Yu5bAdOik2+KaLwUcd1MyxUidnP+KK+x3funbGUXZB6UpUlNAsKhDCKh1QETgNL
         1etQ==
X-Gm-Message-State: ANoB5plKhvJp0lQ5GLFCD6nKi3pjHboz4yKZzvKBzjYjPlIv0ufs+1oo
        fGdXsK/hwXVGUQ/F0FRtqqY=
X-Google-Smtp-Source: AA0mqf7fe4FLktKmnk8ha2bh/PFHVWSkMbXdVsIHTsgqOGJ5y9YIr53wEnDYILSMNqx8ath7/pwoNQ==
X-Received: by 2002:a5d:4f0e:0:b0:242:51cb:45e9 with SMTP id c14-20020a5d4f0e000000b0024251cb45e9mr6557060wru.0.1670776812341;
        Sun, 11 Dec 2022 08:40:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d8-20020a5d5388000000b0024258722a7fsm6557847wrv.37.2022.12.11.08.40.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 08:40:11 -0800 (PST)
Message-ID: <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
Date:   Sun, 11 Dec 2022 17:40:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Ping^1: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man:
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
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
In-Reply-To: <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yhrkmwNjLXUnjNQ2waTy7FDY"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yhrkmwNjLXUnjNQ2waTy7FDY
Content-Type: multipart/mixed; boundary="------------0rQNTfetPLG4OMvvoqh3Teiq";
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
Message-ID: <b13137bb-8eb9-dc69-da3b-191eda8e5642@gmail.com>
Subject: Ping^1: Chapters of the manual (was: Bug#1018737: /usr/bin/rst2man:
 rst2man: .TH 5th field shouldn't be empty)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <a7b8c6b3-a8e8-6ab7-6cf4-118446849a9c@gmail.com>
 <dca0e251-7481-7f1e-4077-0ddee070a357@gmail.com>
 <20220906204245.hzhq2s7yha6zzgrh@illithid>
 <30e80fe0-f0ce-d6cd-ee40-28692e5a5f82@gmail.com>
 <5c1e8620-e4ff-c79a-1d4e-11f797276726@gmail.com>
 <20221116234049.GA1229865@if>
 <f306a83a-306d-e3d0-5d25-bf07da3da59f@gmail.com>
 <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>
In-Reply-To: <c23b1a4f-1269-55a6-53ac-abbd2cff5786@gmail.com>

--------------0rQNTfetPLG4OMvvoqh3Teiq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNClRoaXMgaXMgYSBnZW50bGUgcGluZyBhYm91dCBteSB0ZXJtaW5vbG9naWNhbCBy
ZWZvcm1zIGFib3V0IG1hbnVhbCBwYWdlIGNoYXB0ZXJzLg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6IFJlOiBD
aGFwdGVycyBvZiB0aGUgbWFudWFsICh3YXM6IEJ1ZyMxMDE4NzM3OiAvdXNyL2Jpbi9yc3Qy
bWFuOiANCnJzdDJtYW46IC5USCA1dGggZmllbGQgc2hvdWxkbid0IGJlIGVtcHR5KQ0KRGF0
ZTogVGh1LCAxNyBOb3YgMjAyMiAwMToyODoxMiArMDEwMA0KRnJvbTogQWxlamFuZHJvIENv
bG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+DQpUbzogQ29saW4gV2F0c29uIDxjandh
dHNvbkBkZWJpYW4ub3JnPiwgSW5nbyBTY2h3YXJ6ZSA8c2Nod2FyemVAdXN0YS5kZT4sIEcu
IA0KQnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVuLnJvYmluc29uQGdtYWlsLmNvbT4sIGxp
bnV4LW1hbiANCjxsaW51eC1tYW5Admdlci5rZXJuZWwub3JnPiwgZ3JvZmZAZ251Lm9yZw0K
Q0M6IE1pY2hhZWwgSGFhcmR0IDxtaWNoYWVsQG1vcmlhLmRlPiwgQW5kcmllcyBCcm91d2Vy
IDxBbmRyaWVzLkJyb3V3ZXJAY3dpLm5sPiwgDQpNaWNoYWVsIEtlcnJpc2sgPG10ay5tYW5w
YWdlc0BnbWFpbC5jb20+LCBEb3VnbGFzIE1jSWxyb3kgDQo8ZG91Z2xhcy5tY2lscm95QGRh
cnRtb3V0aC5lZHU+LCBBbmRyaWVzIEUuIEJyb3V3ZXIgPGFlYkBjd2kubmw+DQoNCkhpIENv
bGluLCBJbmdvLCBhbmQgQnJhbmRlbiwNCg0KT24gMTEvMTcvMjIgMDE6MDYsIEcuIEJyYW5k
ZW4gUm9iaW5zb24gd3JvdGU6DQogID4+IEkgdXNlZCB0ZW1wb3JhcmlseSB0aGUgdGVybSBb
c3ViXWNoYXB0ZXIgdG8gc2VlIGhvdyBpdCBmaXRzLg0KICA+IEkgdGhpbmsgdGhlIGFkb3B0
aW9uIG9mIHRoZSB0ZXJtIChzdWIpY2hhcHRlciBoYXMgYSBwb3RlbnRpYWwgYmVuZWZpdCBp
bg0KICA+IHRoYXQgaXQgcmVtb3ZlcyBhIHRlcm1pbm9sb2dpY2FsIGNvbGxpc2lvbiB3aXRo
IChzdWIpc2VjdGlvbnMgYXMNCiAgPiBzdWJkaXZpc2lvbnMgb2YgaW5kaXZpZHVhbCBtYW4g
cGFnZXMgKG1hbjogU0gsIFNTOyBtZG9jOiBTaCwgU3MpLg0KICA+DQogID4gSWYgdGhpcyB0
ZXJtaW5vbG9naWNhbCByZWZvcm0gaXMgYWRvcHRlZCwgSSB0aGluayBpdCBzaG91bGQgYmUg
ZG9uZQ0KICA+IGFjcm9zcyBhbGwgb2YgKDEpIExpbnV4IG1hbi1wYWdlcywgKDIpIGdyb2Zm
LCAoMykgbWFuZG9jLCBhbmQgKDQpDQogID4gbWFuLWRiLiAgSWYgd2UgY2FuJ3Qgc3BlYWsg
d2l0aCBvbmUgdm9pY2Ugb24gdGhpcyB0aGVuIEkgdGhpbmsgaXQncw0KICA+IGJldHRlciBu
b3QgdG8gdW5kZXJ0YWtlIHRoYXQgcmVmb3JtIGF0IGFsbCwgdG8gYXZvaWQgZnJ1c3RyYXRp
bmcgdGhlDQogID4gZGlzY292ZXJhYmlsdHkgb2YgbWFuIHBhZ2VzLg0KICA+DQogID4gUG9z
c2libHkgdGhlIGJpZ2dlc3QgYmFycmllciB0byB0aGlzIGlzIHRoZSBtbmVtb25pYyBhbmQg
ZG9jdW1lbnRhdGlvbg0KICA+IG9mIHRoZSBtYW4oMSkgJy1zJyBvcHRpb24uICBJbiBtYW4t
ZGIgbWFuLCAnLUMnIGFuZCAnLWMnIGFyZSBib3RoDQogID4gYWxyZWFkeSBpbiB1c2UuDQoN
ClRoYXQgY2FuIGJlIGRvY3VtZW50ZWQgYXMgYSBoaXN0b3JpY2FsIGRldGFpbCBpbiB0aGUg
ZG9jdW1lbnRhdGlvbiBvZiB0aGUgb3B0aW9uIA0KaXRzZWxmLCB3aGljaCBtYWtlcyBzZW5z
ZSwgYXMgdG8gYXZvaWQgcHJvZ3JhbW1lcnMgdGhhdCBoYXZlIGhlYXJkIG9mIHNlY3Rpb25z
IA0KdG8gdHJ5IHRvIGdyZXAgc2VjdGlvbiBhbmQgZmluZCBub3RoaW5nLg0KDQogID4NCiAg
PiBQcm9iYWJseSBhIGdvb2QgaWRlYSB0byBsb29wIENvbGluIFdhdHNvbiBpbiBvbiB0aGlz
IHByb3Bvc2FsIG9mIHlvdXJzLA0KICA+IHdoaWNoIGlzIHN0cmljdGx5IHNwZWFraW5nIHNl
dmVyYWJsZSBmcm9tIHRoZSBiZWxvdy4NCg0KWWVzLCBlc3BlY2lhbGx5IHNpbmNlIHBhcnQg
b2YgdGhlIGRpc2N1c3Npb24gaXMgaW4gbGludXgtbWFuQCAoSSdtIG5vdCBzdXJlIGlmIA0K
aGUgcmVhZHMgaXQ7IEkgdGhpbmsgbm90KSBhbmQgbm90IGluIGdyb2ZmQCAod2hpY2ggaGUg
cmVhZHMsIEFGQUlLKS4gIFNvLCBJJ2xsIA0KbWVyZ2UgdGhlIDIgZGlzY3Vzc2lvbnMgYWJv
dXQgdGhpcyBieSBmb3J3YXJkaW5nIHRoZSAyIG1vc3QgaW50ZXJlc3Rpbmcgb3RoZXIgDQpl
bWFpbHMgYmVsb3cuDQoNClNvLCBkb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gYWxsIG9mIHVzIHRv
IHN0YXJ0IHVzaW5nIHRoZSB0ZXJtIGNoYXB0ZXIgZm9yIA0KZGl2aXNpb25zIG9mIHRoZSBt
YW4tcGFnZXMgc2luZ2xlIHZvbHVtZSwgc28gdGhhdCB0aGUgbWFudWFsIHBhZ2VzIGluIExp
bnV4IGFyZSANCm9yZ2FuaXplZCBmcm9tIG5vdyBvbiBpbiBjaGFwdGVycyAxIHRvIDkgaW5z
dGVhZCBvZiBzZWN0aW9ucyAxIHRvIDk/DQoNCkNoZWVycywNCg0KQWxleA0KDQoNCi0tLS0t
LS0tIEZvcndhcmRlZCBNZXNzYWdlIC0tLS0tLS0tDQpTdWJqZWN0OiBDaGFwdGVycyBvZiB0
aGUgbWFudWFsICh3YXM6IEJ1ZyMxMDE4NzM3OiAvdXNyL2Jpbi9yc3QybWFuOiByc3QybWFu
OiANCi5USCA1dGggZmllbGQgc2hvdWxkbid0IGJlIGVtcHR5KQ0KRGF0ZTogV2VkLCAxNiBO
b3YgMjAyMiAyMzo0NjoxMyArMDEwMA0KRnJvbTogQWxlamFuZHJvIENvbG9tYXIgPGFseC5t
YW5wYWdlc0BnbWFpbC5jb20+DQpUbzogRy4gQnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVu
LnJvYmluc29uQGdtYWlsLmNvbT4NCkNDOiBncm9mZkBnbnUub3JnLCBNaWNoYWVsIEhhYXJk
dCA8bWljaGFlbEBtb3JpYS5kZT4sIEFuZHJpZXMgQnJvdXdlciANCjxBbmRyaWVzLkJyb3V3
ZXJAY3dpLm5sPiwgTWljaGFlbCBLZXJyaXNrIDxtdGsubWFucGFnZXNAZ21haWwuY29tPiwg
RG91Z2xhcyANCk1jSWxyb3kgPGRvdWdsYXMubWNpbHJveUBkYXJ0bW91dGguZWR1Pg0KDQpI
aSBCcmFuZGVuIQ0KDQpPbiA5LzcvMjIgMDA6MTMsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KICA+Pj4gSSd2ZSBzZWVuIHNwb3JhZGljYWxseSByZWZlcmVuY2VzIHRvIHRoZSBudW1i
ZXJzIGFzIGNoYXB0ZXJzLCBwcm9iYWJseQ0KICA+Pj4gZnJvbSB3aGVuIHRoZSBtYW51YWwg
d2FzIGEgcHJvcGVyIGJvb2ssIGJ1dCB0aGF0IHRlcm0gc2VlbXMgdG8gaGF2ZQ0KICA+Pj4g
ZmFsbGVuIGluIHVzZS4NCiAgPj4NCiAgPj4gSSBkb24ndCByZWNhbGwgc2VlaW5nIHRoaXMu
ICBXaGlsZSBub3QgbXkgcHJlZmVyZW5jZSwgSSB3b3VsZCByZWdhcmQgaXQNCiAgPj4gYXMg
YW4gZXhjdXNhYmxlIGlubm92YXRpb24gaW4gcmVzcG9uc2UgdG8gYW4gdW5oZWxwZnVsIG92
ZXJsYXAgaW4gcHJpb3INCiAgPj4gdXNhZ2UuDQogID4NCiAgPiBJIGRvbid0IHJlbWVtYmVy
IHdoZXJlIEkndmUgc2VlbiB0aGlzLiAgSSBzZWVtIHRvIHJlY2FsbCBpdCwgYnV0IG1heWJl
IGl0J3MganVzdA0KICA+IGEgZ2xpdGNoIGluIG15IG1lbW9yeS4gIEl0IHdvdWxkIGNlcnRh
aW5seSBzaW1wbGlmeSBub21lbmNsYXR1cmUuICBJZiB3ZSBjb21lIHVwDQogID4gd2l0aCBh
IGdvb2QgdGVybSBmb3Igc3Vic2VjdGlvbnMgc3VjaCBhcyAzaGVhZCwgSSBtaWdodCBzdGFy
dCB1c2luZyB0aGUgdGVybQ0KICA+IGNvbGxvcXVpYWxseS4gIERvZXMgc3ViY2hhcHRlciBz
b3VuZCBnb29kIHRvIHlvdT8NCiAgPg0KDQoNCkkndmUgZ290IGdvb2QgbmV3cyBmb3IgeW91
LiAgSSBzdGFydGVkIHdyaXRpbmcgaW50cm8oM3R5cGUpLCBhZnRlciBJIGdvdCB0aGUgDQpm
aXJzdCBjb250cmlidXRpb24gb2YgYSBuZXcgcGFnZSB0byBjaGFwdGVyIDN0eXBlIG9mIHRo
ZSBtYW51YWwuDQoNCkFuZCB3aGlsZSBkb2luZyBpdCwgSSBmb3VuZCBhIHBsYWNlIHdoZXJl
IHRoZSB0ZXJtICdjaGFwdGVyJyBpcyB1c2VkLiAgSXQncyB2ZXJ5IA0KbGlrZWx5IHRoYXQg
dGhlcmUncyB3aGVyZSBJIHNhdyBpdCB0aGUgb3RoZXIgdGltZS4gIEl0J3MgaW4gYSBjb21t
ZW50IGluIHRoZSANCmludHJvKDMpIHBhZ2UsIHdoaWNoIHNlZW1zIHRvIGJlIHRoZXJlIHNp
bmNlIHRoZXJlJ3MgZ2l0IGhpc3RvcnkuDQoNClRoZSBhdXRob3Igb2YgdGhlIHBhZ2Ugc2Vl
bXMgdG8gYmUgTWljaGFlbCBIYWFyZHQ7IGhpcyBsYXN0IGNvbW1pdCB0byB0aGUgDQptYW4t
cGFnZXMgaXMgZnJvbSAyMDE1LCBzbyBJIGd1ZXNzIGhpcyBlbWFpbCBpcyBzdGlsbCBhY3Rp
dmUuICBNYXliZSBoZSBjYW4gDQpjb21tZW50LiAgSSBhbHNvIENDZWQgYWViIGFuZCBtdGss
IGFzIHRoZXkgbWFpbnRhaW5lZCB0aGUgcGFnZXMgYmVmb3JlIG1lIGFuZCANCm1heSBrbm93
IGlmIHRoYXQgdGVybSB3YXMgaW4gdXNlIGF0IHRoZSB0aW1lLg0KDQoNCkNoZWVycywNCg0K
QWxleA0KDQoNCg0KDQoNCg0KLS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0N
ClN1YmplY3Q6IFJlOiBDaGFwdGVycyBvZiB0aGUgbWFudWFsICh3YXM6IEJ1ZyMxMDE4NzM3
OiAvdXNyL2Jpbi9yc3QybWFuOiANCnJzdDJtYW46IC5USCA1dGggZmllbGQgc2hvdWxkbid0
IGJlIGVtcHR5KQ0KRGF0ZTogVGh1LCAxNyBOb3YgMjAyMiAwMDo0Nzo0MyArMDEwMA0KRnJv
bTogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+DQpUbzogQW5k
cmllcyBFLiBCcm91d2VyIDxhZWJAY3dpLm5sPg0KQ0M6IEcuIEJyYW5kZW4gUm9iaW5zb24g
PGcuYnJhbmRlbi5yb2JpbnNvbkBnbWFpbC5jb20+LCBncm9mZkBnbnUub3JnLCBNaWNoYWVs
IA0KSGFhcmR0IDxtaWNoYWVsQG1vcmlhLmRlPiwgQW5kcmllcyBCcm91d2VyIDxBbmRyaWVz
LkJyb3V3ZXJAY3dpLm5sPiwgTWljaGFlbCANCktlcnJpc2sgPG10ay5tYW5wYWdlc0BnbWFp
bC5jb20+LCBEb3VnbGFzIE1jSWxyb3kgPGRvdWdsYXMubWNpbHJveUBkYXJ0bW91dGguZWR1
Pg0KDQpIaSBBbmRyaWVzIQ0KDQpPbiAxMS8xNy8yMiAwMDo0MCwgQW5kcmllcyBFLiBCcm91
d2VyIHdyb3RlOg0KICA+DQogID4+IE9uIDkvNy8yMiAwMDoxMywgQWxlamFuZHJvIENvbG9t
YXIgd3JvdGU6DQogID4+Pj4+IEkndmUgc2VlbiBzcG9yYWRpY2FsbHkgcmVmZXJlbmNlcyB0
byB0aGUgbnVtYmVycyBhcyBjaGFwdGVycywgcHJvYmFibHkNCiAgPj4+Pj4gZnJvbSB3aGVu
IHRoZSBtYW51YWwgd2FzIGEgcHJvcGVyIGJvb2ssIGJ1dCB0aGF0IHRlcm0gc2VlbXMgdG8g
aGF2ZQ0KICA+Pj4+PiBmYWxsZW4gaW4gdXNlLg0KICA+DQogID4gVW5peCBQcm9ncmFtbWVy
J3MgTWFudWFsICg0LjIgQlNEKSBBdWd1c3QsIDE5ODMNCiAgPiBWb2x1bWUgMQ0KICA+IENo
YXB0ZXIgSTogQ29tbWFuZHM6IGludHJvLCBhZGIsIC4uLg0KICA+IENoYXB0ZXIgSUk6IFN5
c3RlbSBjYWxsczogaW50cm8sIGFjY2VwdCwgYWNjZXNzLCAuLi4NCiAgPiBDaGFwdGVyIElJ
STogU3Vicm91dGluZXM6IGludHJvLCBhYm9ydCwgYWJzLCAuLi4NCiAgPiBDaGFwdGVyIElW
OiBTcGVjaWFsIGZpbGVzOiBpbnRybywgYWNjLCAuLi4NCiAgPiBDaGFwdGVyIFY6IEZpbGUg
Zm9ybWF0cyBhbmQgY29udmVudGlvbnM6IGEub3V0LCAuLi4NCiAgPiBDaGFwdGVyIFZJOiBH
YW1lczogYWFyZHZhcmssIGFkdmVudHVyZSwgLi4uDQogID4gQ2hhcHRlciBWSUk6IE1hY3Jv
IHBhY2thZ2VzIGFuZCBsYW5ndWFnZSBjb252ZW50aW9uczogaW50cm8sIGFzY2lpLCAuLi4N
CiAgPiBDaGFwdGVyIFZJSUk6IE1haW50ZW5hbmNlIGNvbW1hbmRzIGFuZCBwcm9jZWR1cmVz
OiBpbnRybywgYWMsIC4uLg0KICA+DQogID4gU2V2ZW50aCBFZGl0aW9uLCBKYW51YXJ5LCAx
OTc5DQogID4gVm9sdW1lIDJBDQogID4gMSBhbmQgMjogR2VuZXJhbCBXb3Jrcw0KICA+IDMg
dGhyb3VnaCA3OiBHZXR0aW5nIFN0YXJ0ZWQNCiAgPiA4IHRocm91Z2ggMTM6IERvY3VtZW50
IFByZXBhcmF0aW9uDQogID4gMTQgdGhyb3VnaCAxODogUHJvZ3JhbW1pbmcNCiAgPg0KICA+
IFZvbHVtZSAyQjoNCiAgPiAxOSB0aHJvdWdoIDI4OiBTdXBwb3J0aW5nIFRvb2xzIGFuZCBM
YW5ndWFnZXMNCiAgPiAyOSB0aHJvdWdoIDM4OiBJbXBsZW1lbnRhdGlvbiwgTWFpbnRlbmFu
Y2UgYW5kIE1pc2NlbGxhbmVvdXMNCiAgPiAuLi4NCiAgPg0KICA+IFZvbHVtZSAxIGhhZCBj
aGFwdGVycy4gVGhlIGxhdGVyIHZvbHVtZXMgaGFkIG51bWJlcmVkIGRvY3VtZW50cy4NCg0K
VGhhbmtzIGZvciB0aGUgcHJvbXB0IHJlcGx5IQ0KJ2NoYXB0ZXInIGRlZmluaXRlbHkgbWFr
ZXMgbW9yZSBzZW5zZSwgYXQgbGVhc3QgY29uc2lkZXJpbmcgdGhlIG1hbnVhbCBhcyBhIA0K
Ym9vay4gIFNpbmNlIGl0IHNlZW1zIHRvIGhhdmUgYmVlbiBpbiBnZW5lcmFsIHVzZSBpbiB0
aGUgcGFzdCwgaXQncyBub3Qgc28gbXVjaCANCm9mIGEgYnJlYWtpbmcgY2hhbmdlIHRvIHN0
YXJ0IHVzaW5nIGl0IG5vdyBhZ2Fpbi4gIFNvLCB0byBhdm9pZCBhbWJpZ3VpdHkgDQpiZXR3
ZWVuIHNlY3Rpb24gcmVmZXJyaW5nIHRvIGEgY2hhcHRlciBvciBzZWN0aW9uIHJlZmVycmlu
ZyB0byBwYXJ0IG9mIGEgcGFnZSwgDQpJJ2xsIHN0YXJ0IHVzaW5nIHRoZSB0ZXJtIFtzdWJd
Y2hhcHRlciBjb25zaXN0ZW50bHkuDQoNCldpdGggdGltZSwgSSBleHBlY3QgdG8gcmVwbGFj
ZSBhbGwgb2NjdXJyZW5jZXMgb2Ygc2VjdGlvbiB0aGF0IHNob3VsZCBiZSBjaGFwdGVyIA0K
aW4gdGhlIG1hbi1wYWdlcy4NCg0KICA+DQogID4gQW5kcmllcw0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------0rQNTfetPLG4OMvvoqh3Teiq--

--------------yhrkmwNjLXUnjNQ2waTy7FDY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWB+oACgkQnowa+77/
2zIj/RAAqeJ05ubYq26CftZFPOqyEECaUWRLo2yhkVNrflddCSg9rWAlEpNUeWSe
i4TfNQ+ykNp9zEhoHW8cq7PbMyhtqp+AX2DHJH52DwZWZJ/Rq5tVchhBqSRxKBWH
kiKCg8H91wZ9n1oNNr5iiXbpCDbZlXVoK1VWfJYwZozbLRmzPPBgARdFys+RSnxD
r/yf/iDxks2LeC0uh9w5WudUGPjfTQy1sB29MrPS4wT9mJm2IEjWMfnEoTk/HQEr
J0L/QaX95NPCqqgagZO9o1cO9Var4wt4ETTNsER5FTxTXFyA77BSQrE0KRkoJw7o
iI4QBbuEKOh57MEZJccbeD02x5o9Zz0iRzi4/OB8Pbx4t/5+zKN/5M1tGanoVG8T
JdBhBZ+Uu27EotWqr76tBAF90dAaJGUApCCleu1jvPnL1sHi1nO9mIrT1cdj6vg2
5Fkpod/NdIm+rapJtzm/CtfqfuJXX/0dfgySYYvXBhTc8NsDsRf5XrxAcrZywMo4
oV5pCSl+BuSZTKKznMdqzxLCbuinEUZ0nsWMy9Kk4i4hjEyad32OaYevN6LPPXwy
Kh/D9sKSieX9dBPlt4iJIpAZIxQUuaCCjSZBGqiaKCK+1kLU2doSGTlEeNOC6Cat
wxpoHXstPhADKRIhb4Eh0pvuYVE2IqrWXAmMUj70PLP3a62+IJo=
=XAf/
-----END PGP SIGNATURE-----

--------------yhrkmwNjLXUnjNQ2waTy7FDY--
