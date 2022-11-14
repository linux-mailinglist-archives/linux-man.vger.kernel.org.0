Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81EEF62874D
	for <lists+linux-man@lfdr.de>; Mon, 14 Nov 2022 18:40:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236665AbiKNRku (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Nov 2022 12:40:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236965AbiKNRkn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Nov 2022 12:40:43 -0500
Received: from xry111.site (xry111.site [89.208.246.23])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91FC9C742
        for <linux-man@vger.kernel.org>; Mon, 14 Nov 2022 09:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1668447639;
        bh=VZVaUl9X4eZdGT6RfC1oQDK7UmkPBkc3qKH8A9luH/k=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=KTrB9eBQgoxr5DX0uUuzx/b90ylR+U+UWXz3hg3Vs+vUG85nnIUrazptCK3DRDE6W
         l/125yCHk6HuegQu58Eq14a4qFiMTtyWw8HpEySXBtvggi3RpOKJ0FEvMzgjlcZ3H7
         E1qDhM6SkBktByDII2A3cZqtUkifQMsXFFm9v5uc=
Received: from localhost.localdomain (xry111.site [IPv6:2001:470:683e::1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id EE49A6698D;
        Mon, 14 Nov 2022 12:40:37 -0500 (EST)
Message-ID: <3412acd8ea2f0f3ace22ae7a88b1782fca66aa39.camel@xry111.site>
Subject: Ping: [PATCH] syscall.2: add loongarch
From:   Xi Ruoyao <xry111@xry111.site>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Huacai Chen <chenhuacai@kernel.org>,
        Wang Xuerui <kernel@xen0n.name>, loongarch@lists.linux.dev
Date:   Tue, 15 Nov 2022 01:40:35 +0800
In-Reply-To: <20221105021514.8344-1-xry111@xry111.site>
References: <20221105021514.8344-1-xry111@xry111.site>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.46.0 
MIME-Version: 1.0
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,SPF_HELO_PASS,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

R2VudGxlIFBpbmcgOikuCgpPbiBTYXQsIDIwMjItMTEtMDUgYXQgMTA6MTUgKzA4MDAsIFhpIFJ1
b3lhbyB3cm90ZToKPiBMaW5rOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xvb25nYXJjaC8x
ZjM1MzY3OC0zMzk4LWUzMGItMWM4Ny02ZWRiMjc4Zjc0ZGJAeGVuMG4ubmFtZS8KPiBMaW5rOgo+
IGh0dHBzOi8vc291cmNld2FyZS5vcmcvZ2l0Lz9wPWdsaWJjLmdpdDthPWJsb2I7Zj1zeXNkZXBz
L3VuaXgvc3lzdi9saW51eC9sb29uZ2FyY2gvc3lzZGVwLmgKPiBTaWduZWQtb2ZmLWJ5OiBYaSBS
dW95YW8gPHhyeTExMUB4cnkxMTEuc2l0ZT4KPiAtLS0KPiDCoG1hbjIvc3lzY2FsbC4yIHwgMiAr
Kwo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9t
YW4yL3N5c2NhbGwuMiBiL21hbjIvc3lzY2FsbC4yCj4gaW5kZXggMWJhYzBiOWQ3Li5hMmFlZjZk
MzMgMTAwNjQ0Cj4gLS0tIGEvbWFuMi9zeXNjYWxsLjIKPiArKysgYi9tYW4yL3N5c2NhbGwuMgo+
IEBAIC0xNzYsNiArMTc2LDcgQEAgYXJtNjTCoMKgwqDCoMKgwqDCoHN2YyAjMMKgwqB3OMKgwqDC
oMKgwqDCoHgwwqDCoMKgwqDCoMKgeDHCoMKgwqDCoMKgwqAtCj4gwqBibGFja2ZpbsKgwqDCoMKg
wqDCoMKgZXhjcHQgMHgwwqDCoMKgwqDCoMKgwqBQMMKgwqDCoMKgwqDCoFIwwqDCoMKgwqDCoMKg
LcKgwqDCoMKgwqDCoMKgLQo+IMKgaTM4NsKgwqDCoGludCAkMHg4MMKgwqDCoMKgwqDCoMKgZWF4
wqDCoMKgwqDCoGVheMKgwqDCoMKgwqBlZHjCoMKgwqDCoMKgLQo+IMKgaWE2NMKgwqDCoGJyZWFr
IDB4MTAwMDAwwqDCoHIxNcKgwqDCoMKgwqByOMKgwqDCoMKgwqDCoHI5wqDCoMKgwqDCoMKgcjEw
wqDCoMKgwqDCoDEsIDYKPiArbG9vbmdhcmNowqDCoMKgwqDCoMKgc3lzY2FsbCAwwqDCoMKgwqDC
oMKgwqBhN8KgwqDCoMKgwqDCoGEwwqDCoMKgwqDCoMKgLcKgwqDCoMKgwqDCoMKgLQo+IMKgbTY4
a8KgwqDCoHRyYXAgIzDCoGQwwqDCoMKgwqDCoMKgZDDCoMKgwqDCoMKgwqAtwqDCoMKgwqDCoMKg
wqAtCj4gwqBtaWNyb2JsYXplwqDCoMKgwqDCoGJya2kgcjE0LDjCoMKgwqDCoMKgwqByMTLCoMKg
wqDCoMKgcjPCoMKgwqDCoMKgwqAtwqDCoMKgwqDCoMKgwqAtCj4gwqBtaXBzwqDCoMKgc3lzY2Fs
bMKgdjDCoMKgwqDCoMKgwqB2MMKgwqDCoMKgwqDCoHYxwqDCoMKgwqDCoMKgYTPCoMKgwqDCoMKg
wqAxLCA2Cj4gQEAgLTMwMSw2ICszMDIsNyBAQAo+IGFybTY0wqDCoMKgwqDCoMKgwqB4MMKgwqDC
oMKgwqDCoHgxwqDCoMKgwqDCoMKgeDLCoMKgwqDCoMKgwqB4M8KgwqDCoMKgwqDCoHg0wqDCoMKg
wqDCoMKgeDXCoMKgwqDCoMKgwqAtCj4gwqBibGFja2ZpbsKgwqDCoMKgwqDCoMKgUjDCoMKgwqDC
oMKgwqBSMcKgwqDCoMKgwqDCoFIywqDCoMKgwqDCoMKgUjPCoMKgwqDCoMKgwqBSNMKgwqDCoMKg
wqDCoFI1wqDCoMKgwqDCoMKgLQo+IMKgaTM4NsKgwqDCoGVieMKgwqDCoMKgwqBlY3jCoMKgwqDC
oMKgZWR4wqDCoMKgwqDCoGVzacKgwqDCoMKgwqBlZGnCoMKgwqDCoMKgZWJwwqDCoMKgwqDCoC0K
PiDCoGlhNjTCoMKgwqBvdXQwwqDCoMKgwqBvdXQxwqDCoMKgwqBvdXQywqDCoMKgwqBvdXQzwqDC
oMKgwqBvdXQ0wqDCoMKgwqBvdXQ1wqDCoMKgwqAtCj4gK2xvb25nYXJjaMKgwqDCoMKgwqDCoGEw
wqDCoMKgwqDCoMKgYTHCoMKgwqDCoMKgwqBhMsKgwqDCoMKgwqDCoGEzwqDCoMKgwqDCoMKgYTTC
oMKgwqDCoMKgwqBhNcKgwqDCoMKgwqDCoGE2Cj4gwqBtNjhrwqDCoMKgZDHCoMKgwqDCoMKgwqBk
MsKgwqDCoMKgwqDCoGQzwqDCoMKgwqDCoMKgZDTCoMKgwqDCoMKgwqBkNcKgwqDCoMKgwqDCoGEw
wqDCoMKgwqDCoMKgLQo+IMKgbWljcm9ibGF6ZcKgwqDCoMKgwqByNcKgwqDCoMKgwqDCoHI2wqDC
oMKgwqDCoMKgcjfCoMKgwqDCoMKgwqByOMKgwqDCoMKgwqDCoHI5wqDCoMKgwqDCoMKgcjEwwqDC
oMKgwqDCoC0KPiDCoG1pcHMvbzMywqDCoMKgwqDCoMKgwqBhMMKgwqDCoMKgwqDCoGExwqDCoMKg
wqDCoMKgYTLCoMKgwqDCoMKgwqBhM8KgwqDCoMKgwqDCoC3CoMKgwqDCoMKgwqDCoC3CoMKgwqDC
oMKgwqDCoC0KPiDCoMKgwqDCoMKgwqDCoDEKCi0tIApYaSBSdW95YW8gPHhyeTExMUB4cnkxMTEu
c2l0ZT4KU2Nob29sIG9mIEFlcm9zcGFjZSBTY2llbmNlIGFuZCBUZWNobm9sb2d5LCBYaWRpYW4g
VW5pdmVyc2l0eQo=

