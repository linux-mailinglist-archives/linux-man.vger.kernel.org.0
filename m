Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4056641FDA
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 22:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbiLDV0i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 16:26:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230350AbiLDV03 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 16:26:29 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CBFA13CDA
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 13:26:28 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h7so9952808wrs.6
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 13:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcvPZcyuHDLGvNjh5/3hL4HT/VFfdOOGRKrFpluIYWQ=;
        b=Ux4tB79PB3VGWTR64QCVE6Xx3T83bpk5fHp/mX4FumNGPgmQ7jAc06jwatq7QyGJ2E
         TNB6XQAcyIhYYRnjizr78Esv+iHcWEXJExllweTj0tqNENUUnviVSkHk4ulDrosYBRSp
         DlY/nlHuV9tiolePhAi6qr0qVirofges92RNYmF+IWGi8pPReFe5qxuZp56d90rpQt8D
         9miHG7m748yAfaMOz2MVSDuzeZm39veCGRWfAMAWRjDSQ7aAmG0eckmdGNkUqHiSfrBB
         KRTPnUVUEY+WYAIGZdZdGe7pUlX7gBuq3kBsyOaRv7VHiEeQLfVGO8fnOv9PlfrCupY5
         r+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IcvPZcyuHDLGvNjh5/3hL4HT/VFfdOOGRKrFpluIYWQ=;
        b=G7ZucjUUgf7jBHnUYavXuNDuEWuJHNqPORG1rVIJh9zR6i/3X3+cFK4KqTXHmz9cko
         ej5Vtt8yl0xqzTuD1rbeOr8f1oT52Imftlv4EQyy88WvMtP1m52feWebO/QO0UwVCxPD
         DIF/eos8rMb022HVMikBDBDpmKBnZZLC0qQN18JbJ79U5zSXAfcvI/wva+U4zgTutUKO
         CAdmB1UtLfH/vxlG6sBn/5EG3Wjo+jijnFMgx8jodymBNHRcsWaxi+U0Rd5OD+2nIGGj
         oZ2j575e2G5kDgG6sLhJp4GHekHkt2v287uccTUJKyWLnJA2AZUeSyu/YijuiZlfFXmk
         phtg==
X-Gm-Message-State: ANoB5pnpX6hc2joSO/sQZBJzS8oDudMgcVxQtzEer40GEt5Fs3hBTm5n
        bYhy+HmZ5LbRbKJl36dm4vg=
X-Google-Smtp-Source: AA0mqf6Y1Ohr+UFzPwFPFHQhy91MBKKu1iZnTLrB6HoxxFs4Zb+BQNASSsal0zkVaRpzRfrrmEd6FA==
X-Received: by 2002:a5d:4284:0:b0:242:5057:8b23 with SMTP id k4-20020a5d4284000000b0024250578b23mr4391850wrq.51.1670189186542;
        Sun, 04 Dec 2022 13:26:26 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h20-20020a05600c351400b003b47ff307e1sm17190237wmq.31.2022.12.04.13.26.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 13:26:26 -0800 (PST)
Message-ID: <a6570a68-6d6a-be3f-5d4c-9a28b55fd718@gmail.com>
Date:   Sun, 4 Dec 2022 22:26:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
 <20221204141443.GG441@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204141443.GG441@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TcNwLhXch0NCBCsFOdXD7RWF"
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
--------------TcNwLhXch0NCBCsFOdXD7RWF
Content-Type: multipart/mixed; boundary="------------rOFz80MiDQfG45DaxoccHVj3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <a6570a68-6d6a-be3f-5d4c-9a28b55fd718@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
 <20221204141443.GG441@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204141443.GG441@Debian-50-lenny-64-minimal>

--------------rOFz80MiDQfG45DaxoccHVj3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTU6MTQsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMDM6MDY6
NDBQTSArMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDE1
OjAwLCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IEhlbGxvIEFsZWphbmRybywNCj4+
PiBPbiBTdW4sIERlYyAwNCwgMjAyMiBhdCAwMToyNTowN1BNICswMTAwLCBBbGVqYW5kcm8g
Q29sb21hciB3cm90ZToNCj4+Pj4gT24gMTIvNC8yMiAxMDowNywgSGVsZ2UgS3JldXR6bWFu
biB3cm90ZToNCj4+Pj4+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2Fz
IGZvdW5kOg0KPj4+Pj4NCj4+Pj4+IElzc3VlOiAgICBtb3VudCBwb2ludCBJPEI+IOKGkiBt
b3VudCBJPEI+DQo+Pj4+Pg0KPj4+Pj4gIkhlcmUsIEk8Qj4gaXMgdGhlIGRlc3RpbmF0aW9u
IG1vdW50LCBhbmQgSTxiPiBpcyBhIHN1YmRpcmVjdG9yeSBwYXRoIHVuZGVyIg0KPj4+Pj4g
InRoZSBtb3VudCBwb2ludCBJPEI+LiAgVGhlIHByb3BhZ2F0aW9uIHR5cGUgb2YgdGhlIHJl
c3VsdGluZyBtb3VudCwgSTxCL2I+LCINCj4+Pj4+ICJmb2xsb3dzIHRoZSBzYW1lIHJ1bGVz
IGFzIGZvciBhIGJpbmQgbW91bnQsIHdoZXJlIHRoZSBwcm9wYWdhdGlvbiB0eXBlIG9mIg0K
Pj4+Pj4gInRoZSBzb3VyY2UgbW91bnQgaXMgY29uc2lkZXJlZCBhbHdheXMgdG8gYmUgcHJp
dmF0ZS4iDQo+Pj4+DQo+Pj4+IEknbSBub3Qgc3VyZSBhYm91dCB0aGlzIG9uZS4gIElmIHdl
IGNoYW5nZSB0aGF0IHdvcmRpbmcsIEknZCBsaWtlIHRvIG1ha2UNCj4+Pj4gc3VyZSB3ZSBk
b24ndCBsb3NlIGFueSBkZXRhaWxzIGluIHRoZSBpbmZvcm1hdGlvbi4gIFBsZWFzZSBDQyBh
bnkgcmVsYXRlZA0KPj4+PiBrZXJuZWwgZGV2ZWxvcGVycywgYW5kIHN1Z2dlc3QgdGhlbSBy
ZXZpZXcgdGhlIGRvY3VtZW50YXRpb24gZm9yIG1vcmUNCj4+Pj4gY29uc2lzdGVudCBsYW5n
dWFnZS4NCj4+Pg0KPj4+IFVudGlsIHJlY2VudGx5LCB0aGVyZSB3YXMgIm1vdW50IHBvaW50
IiB1c2VkIGFsbCBvdmVyIHRoaXMgbWFuIHBhZ2VzLg0KPj4+IFRoaXMgd2FzIGNoYW5nZWQg
dG8gIm1vdW50IiBpbiBvbmUgb2YgdGhlIHByZXZpb3VzIHJlbGVhc2Ugb2YgbWFuDQo+Pj4g
cGFnZXMuDQo+Pg0KPj4NCj4+IEkgZGlkbid0IGtub3cgdGhhdDsgcGxlYXNlIHBvaW50IHRv
IHRoZSBjb21taXQgdGhhdCBkaWQgdGhhdC4NCj4gDQo+IFNvcnJ5LCBJIHByb2JhYmx5IGRv
bid0IGhhdmUgdGhlIHRpbWUgdG8gZG8gc28uIFBsZWFzZSByZW1lbWJlciB0aGF0IEkNCj4g
ZG9uJ3QgaGF2ZSB0aGUgc291cmNlcyAoSSBjYW4gZm9yIHN1cmUgb2J0YWluIHRoZW0pLiBJ
IGp1c3Qgc2F3IGENCj4gbWFzc2l2IGNoYW5nZSBhbmQgd29uZGVyZWQgd2h5IHRoaXMgb25l
IHdhcyBsZWZ0IG91dC4NCg0KT2theSwgbm8gcHJvYmxlbS4NCg0KPiANCj4gU28gaWYgeW91
IHRoaW5rIGl0IGlzIGZpbmUsIHRoZW4gb2YgY291cnNlIHlvdSBhcmUgdGhlIGV4cGVydCwg
d2UgYXJlDQo+IGp1c3QgdHJhbnNsYXRvcnMuIEkganVzdCBwb2ludGVkIHRoaXMgb3V0IHNv
IHlvdSBjYW4gY29udGFjdCB0aGUNCj4gYXBwcm9yaWF0ZSBleHBlcnRzIChpZiBuZWNlc3Nh
cnkpIGFuZCByZXZpZXcgdGhpcywgaWYgbmVjZXNzYXJ5LiBJZg0KPiBub3QsIHRoZW4gbm8g
cHJvYmxlbS4NCg0KT2theSwgSSdsbCBoYXZlIGEgbG9vayBhdCBpdC4gIFBsZWFzZSBwaW5n
IGFnYWluIGFib3V0IHRoaXMgaXNzdWUgaWYgSSBoYXZlbid0IA0KZml4ZWQgaXQgaW4gdGhl
IGZ1dHVyZS4NCg0KPiANCj4+PiBJIG1hcmsgaXQgV09OVEZJWCBmb3Igbm93LCBzbyBpdCBk
b2Vzbid0IGdldCByZXBvcnRlZCBhZ2FpbiBhbmQgbWF5YmUNCj4+PiB5b3UgY2FuIGNsYXJp
ZnkgKGlmIG5lY2Vzc2FyeSkgdGhpcyBpbiBhIGxhdGVyIHJlbGVhc2UuDQo+Pg0KPj4gSWYg
eW91IHBvaW50IG1lIHRvIHRoZSBwYXRjaCwgSSBjYW4gZGlnIGludG8gaXQuICBUaGFua3Mh
DQo+IA0KPiBTb3JyeSwgSSBkb24ndCBrbm93IHRoZSBpbm5lciB3b3JraW5ncyBvZiBtYW5w
YWdlcyBhbmQgaG93IGFuZCB3aGVyZQ0KPiBwYXRjaGVzIGFyZSBzdG9yZWQuDQoNClRoZSBM
aW51eCBtYW4tcGFnZXMgc291cmNlIGNvZGUgaXMgaGVyZSwgaW4gY2FzZSB5b3UgZXZlciBu
ZWVkIGl0Og0KPGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdl
cy9tYW4tcGFnZXMuZ2l0Lz4NCg0KSWYgeW91IGRvLCBoYXZlIGEgbG9vayBhdCB0aGUgUkVB
RE1FIGFuZCBDT05UUklCVVRJTkcgZmlsZXMuDQoNCj4gDQo+IFJlbWVtYmVyLCBtYW5wYWdl
cy1sMTBuIGhhcyBvdmVyIDEwMCB1cHN0cmVhbSBwcm9qZWN0cyAoYWx0aG91Z2ggbWFucGFn
ZXMgaXMNCj4gcHJvYmFibHkgdGhlIGxhcmdlc3QpLCBzbyB3ZSAob3IgYWN0dWFsbHkgbWUg
YXQgdGhlIG1vbWVudCkgYXJlIHVuYWJsZQ0KPiB0byBnZXQgaW50byB0aGUgaW5uZXIgd29y
a2luZ3Mgb2YgZWFjaCBwcm9qZWN0IGJ1dCBsZWF2ZSBpdCB0byB5b3UgYXMNCj4gdGhlIG1h
aW50YWluZXIgdG8gaGFuZGxlIHRoaXMgYXMgeW91IHNlZSBmaXQuIFdlIGp1c3QgZG9uJ3Qg
d2FudCB0byBiZQ0KPiBzaWxlbnRseSBmaXhpbmcgaXNzdWVzIGluIHRyYW5zbGF0aW9ucyB3
aXRob3V0IHRoZSBvcmlnaW5hbCBhdXRob3JzIGFyZSBiZWVpbmcNCj4gbWFkZSBhd2FyZSBv
ZiB0aGlzLg0KDQpTdXJlLCBJIHVuZGVyc3RhbmQuDQoNCj4gDQo+IFRoYW5rcyBmb3IgeW91
ciB1bmRlcnN0YW5kaW5nLg0KDQo6KQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gR3Jl
ZXRpbmdzDQo+IA0KPiAgICAgICAgICBIZWxnZQ0KDQpUaGFua3MgZm9yIGFsbCB0aGUgcmVw
b3J0cy4gIEkgZml4ZWQgbW9zdCBvZiB0aGVtLiAgSSdsbCBhcHBseSBhIGZldyBvdGhlciAN
CnBhdGNoZXMgYmVmb3JlIHJlbGVhc2luZywgYW5kIHRoZW4gaW4gdGhlIHNvbHN0aWNlIHdp
bGwgcmVsZWFzZSA2LjAyLiAgVGhlbiwgDQpwbGVhc2UgcmVwb3J0IGFnYWluIGFueSBpc3N1
ZXMgdGhhdCB5b3Ugc2VlIGluIHRoZSBuZXcgdmVyc2lvbi4NCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------rOFz80MiDQfG45DaxoccHVj3--

--------------TcNwLhXch0NCBCsFOdXD7RWF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONEIAACgkQnowa+77/
2zLkVQ/+L6cjf+wLwz54VxAHYcFDu2gIoir6lg8qabXxkLsanFAPGGbyYZKTyGsL
jwW+s09EKcd0wox98vXdf531jisodumdCNSfIKrhwEGs0ZhJjQl8nbS1k/pTXS5u
+egiWqOSuTaYIW/nBmTXT7Syds/R/PhTmKTxNDjqzZ9+oNPAUrOPJzQY98sxFhfn
8zv0TfiIXnS/CEhJ9KQSIRfFuQP1T0Ff/NRUiogBzt7sPsU+asPdeuWo41JDMQxT
dLCyWnRRPAvkcBspzFLuBeCsbtyOCLiGFcOv6xD7wMQ8asTCX130cL5JDnstw1BY
sAYXLHhyzAKNEvo7QDffzbZ5drMrFgavWpKs/0A8L6tqVeYHJLlRb6xlILYRGM/X
5mALhpTfIFMKXo9sFJvjLuune2QKMuv9qonm/jpPMb56uxZO2nDeHxYfPT81kuNo
iGMMp1QwuviRshMH71jkQWjiuYWQ+RE35jzzCdlS7DFLGXtdvEUVHkR9wD78I/+U
8NiordBKC2oPB5ZbQe6LvYIKCG/iEXDKrkjFwr+n88NJA0uzVMIZDrNh0h1/6Imn
MLmL7G4DOMycTk1aa7d5a5/D9b7IgWQ+e+65lRLzZh9dsyPF5ZM68m945/XtfhQP
R5EwuyIP0voJEqYFDBjPKca3H2bJnhh13pgX/xHOnTPVpUzMAx4=
=l002
-----END PGP SIGNATURE-----

--------------TcNwLhXch0NCBCsFOdXD7RWF--
