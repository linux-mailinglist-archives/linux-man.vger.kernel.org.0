Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA6C874BE7F
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:52:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjGHQwD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:52:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHQwC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:52:02 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D18C0B9
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:52:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5C55C60B71
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:52:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEB8AC433C8;
        Sat,  8 Jul 2023 16:51:58 +0000 (UTC)
Message-ID: <5ec74495-490f-9f0c-0cc0-88d70c4186a0@gmail.com>
Date:   Sat, 8 Jul 2023 18:51:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] inotify.7: wds are in the range [1, INT_MAX], not [0,
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <erkqk2qv5kv7xbyacbcnu5yn6g3s42ncxbrm2pquhjpdugvk5d@cskpexpgyuj2>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <erkqk2qv5kv7xbyacbcnu5yn6g3s42ncxbrm2pquhjpdugvk5d@cskpexpgyuj2>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pBYQBJ9fJ0C9VRlXX5ljH8c8"
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,NML_ADSP_CUSTOM_MED,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pBYQBJ9fJ0C9VRlXX5ljH8c8
Content-Type: multipart/mixed; boundary="------------tCe0Wlq8u80Zi2huM0bBlKO1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <5ec74495-490f-9f0c-0cc0-88d70c4186a0@gmail.com>
Subject: Re: [PATCH] inotify.7: wds are in the range [1, INT_MAX], not [0,
References: <erkqk2qv5kv7xbyacbcnu5yn6g3s42ncxbrm2pquhjpdugvk5d@cskpexpgyuj2>
In-Reply-To: <erkqk2qv5kv7xbyacbcnu5yn6g3s42ncxbrm2pquhjpdugvk5d@cskpexpgyuj2>

--------------tCe0Wlq8u80Zi2huM0bBlKO1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8yLzIzIDAxOjQxLCDQvdCw0LEgd3JvdGU6DQo+IE5hdHVyYWxseSwgdGhlIGZpcnN0
IGlub3RpZnlfYWRkX3dhdGNoKCkgcmV0dXJucyAxLA0KPiBidXQgYWxzbyBmcy9ub3RpZnkv
aW5vdGlmeS5jOmlub3RpZnlfYWRkX3RvX2lkcigpIGFsbG9jYXRlcyB0aGVtIHdpdGgNCj4g
ICAgaWRyX2FsbG9jX2N5Y2xpYyhpZHIsIGlfbWFyaywgc3RhcnQ9MSwgZW5kPTAsIEdGUF9O
T1dBSVQpOw0KPiAoc3RhcnQgaW5jbHVzaXZlLCBlbmQgZXhjbHVzaXZlKS4NCj4gDQo+IChG
cm9tIFNZU0NBTExfREVGSU5FMyhpbm90aWZ5X2FkZF93YXRjaCwgLi4uKSwNCj4gICBmcm9t
IGlub3RpZnlfdXBkYXRlX3dhdGNoKCksDQo+ICAgZnJvbSBpbm90aWZ5X25ld193YXRjaCgp
KS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFj
emxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQo+IC0tLQ0KDQpIaSENCg0KUGF0Y2ggYXBw
bGllZC4gIFRoYW5rcyENCg0KQ2hlZXJzLA0KQWxleA0KDQo+ICAgbWFuNy9pbm90aWZ5Ljcg
fCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9pbm90aWZ5LjcgYi9tYW43L2lub3RpZnku
Nw0KPiBpbmRleCA0ZmU4MzkwMmEuLjI4MmU5N2VkNyAxMDA2NDQNCj4gLS0tIGEvbWFuNy9p
bm90aWZ5LjcNCj4gKysrIGIvbWFuNy9pbm90aWZ5LjcNCj4gQEAgLTgzOCw3ICs4MzgsNyBA
QCAuU0ggQlVHUw0KPiAgIGFueSBwZW5kaW5nIHVucmVhZCBldmVudHMgZm9yIHRoYXQgd2F0
Y2ggZGVzY3JpcHRvciByZW1haW4gYXZhaWxhYmxlIHRvIHJlYWQuDQo+ICAgQXMgd2F0Y2gg
ZGVzY3JpcHRvcnMgYXJlIHN1YnNlcXVlbnRseSBhbGxvY2F0ZWQgd2l0aA0KPiAgIC5CUiBp
bm90aWZ5X2FkZF93YXRjaCAoMiksDQo+IC10aGUga2VybmVsIGN5Y2xlcyB0aHJvdWdoIHRo
ZSByYW5nZSBvZiBwb3NzaWJsZSB3YXRjaCBkZXNjcmlwdG9ycyAoMCB0bw0KPiArdGhlIGtl
cm5lbCBjeWNsZXMgdGhyb3VnaCB0aGUgcmFuZ2Ugb2YgcG9zc2libGUgd2F0Y2ggZGVzY3Jp
cHRvcnMgKDEgdG8NCj4gICAuQlIgSU5UX01BWCApDQo+ICAgaW5jcmVtZW50YWxseS4NCj4g
ICBXaGVuIGFsbG9jYXRpbmcgYSBmcmVlIHdhdGNoIGRlc2NyaXB0b3IsIG5vIGNoZWNrIGlz
IG1hZGUgdG8gc2VlIHdoZXRoZXIgdGhhdA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4
MjZGQkREOEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------tCe0Wlq8u80Zi2huM0bBlKO1--

--------------pBYQBJ9fJ0C9VRlXX5ljH8c8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSplCsACgkQnowa+77/
2zKP3A/9FmopiXIdxxDGIEFfhgOVGKbW0t/Si8eUmp8AInjw4i3ikTfRCWGd7we4
o5xJSodGGwsSfbtqScu2/P3iC413sC+r7HGfHJ09+tKSWrbbPhzCE2tA84wypBGp
Fqz7FDH3wnnPfF10hHLLa0opF5KriCI8RieXfKSRLCEmsaBhfTDoOVuUkHszHLUM
nHtw0Pgw4lnjvuqh+s0+O7yIiasKL5SpIRuFEs9pxACGD5II4ad8zT028UgFC5KT
FFH8ociKdZscOZQWh57Qvm715+0ztpNLQ5R97eiJ4TQbec+mNM8y5BgdjVQeWZUR
DAhGlp9XIXhn6sFC4hCvpj35LfQKPn1oTkOwM61qnZjSh5i3JZGwiU8kFvci8Kei
e2wX0+oNOjCHljKcLlH7vheIUU6MedATpf7In6w0dGy/PW5x6Lez8nKQJFheqDsH
efd3WoZYcjtSjrXl8tePQ7gdNk/D/+ve4XnOw16lTMUWZCxXQ8fjJlp+KrMwO9yC
nzUt+GGQrfRJhXpS86XDdX50YCHJ1O7cAjyLXFfIEElKRBMl8CBsNdG+IPFhT3jl
AZGsNc5K846/dm9jfQb3fqchpuTM9ZsVDOeXxr34jvf0tvbokbnabd9YQnnB2XzM
zWkco0JBt5SIItZ5p5ELadcaeXgKcTRulM6azLv3Dgx8soxbXPg=
=QMqB
-----END PGP SIGNATURE-----

--------------pBYQBJ9fJ0C9VRlXX5ljH8c8--
