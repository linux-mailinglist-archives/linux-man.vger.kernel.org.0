Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A98451FAB1
	for <lists+linux-man@lfdr.de>; Mon,  9 May 2022 13:01:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbiEILDn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 May 2022 07:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231358AbiEILDd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 May 2022 07:03:33 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5124721935D
        for <linux-man@vger.kernel.org>; Mon,  9 May 2022 03:59:29 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id v59so24164991ybi.12
        for <linux-man@vger.kernel.org>; Mon, 09 May 2022 03:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=hAkT81cOqAy6bL0lOviE6SemT4D5DwE4XS6wFg9X6qU=;
        b=QWj7cRsDrztrIbN53U9/BHkyK27xguXjONBBZjvLbr1/6QTcjWg4iIG6BpkpdTArna
         Nb9WKOfiBelC7aMLAbvTaJ9Gv4CO95/EqQ6yduxhSWfNV7b4ujC14Fi9Vwa8eVq0NYmd
         3UHWNuKFACOqb8ddsDFS21jOWQ1AHoO2WvTmNB3+mqCuIUHvNtTuCynjoDqfNF7Ty7mL
         ptAIl3yj2BNQ6Pjl6RQZVXCo5y+yjKzoOmhTNcEMURlk5Vamw1hbpmTod+W33vccMIZb
         m0G+5gyAMcOylJg/6ArRxJSl8PCo827fqlaCohNjl4iRpLMXrZz9p1MvgQtKCsqSyjLF
         fTqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=hAkT81cOqAy6bL0lOviE6SemT4D5DwE4XS6wFg9X6qU=;
        b=YD6grwgGn3nMB6+ickhCJcUsULw9EsyQyfdK18di6Zi5pOS2jSpCYuOWFe927L5Q//
         gm8k7LiaLGoyeJFZtJCQR2TFHk+aPvothVkbyMc7WXfR0XwDNjSb1830V3w+VCvHQ324
         Q6hRnhgh8bvGXVUm8TlHrxABLyyCueWhWxWUt6mPWdtDIjZs+BU68gLeVmP198ahVW9S
         oXr0ZgCvLx0eG+WqkrV03cI0dFyn44hv8lgjmtaMizIqguN2xurbKX6LoD+GjfHxaJn0
         RiUsTRKVt4ViZQQzGtD4tku9taCbwxrT5yagytdJj5Uv4mYdOZZLG+Pl/iF1Ks+IDozu
         v3Dg==
X-Gm-Message-State: AOAM531F9Eg279+qYPPCXW0CYOKAhFa+sh3CPj3vG9+wMg+5zk4OjMUt
        wQoyxAG1L+l7De0ChbhBaf0NfpH1t+L6pyfQPx5SvO4v2Gk=
X-Google-Smtp-Source: ABdhPJxuCEa7daqihn9aTycG4DqMX648EsU8R6Zgf1p6Yj7FbvD0oLeJjUR3MctJcHnZywZ4tchCF5V/PeYJvgyWu3U=
X-Received: by 2002:a25:2a11:0:b0:645:896e:3bc5 with SMTP id
 q17-20020a252a11000000b00645896e3bc5mr12337200ybq.411.1652093968463; Mon, 09
 May 2022 03:59:28 -0700 (PDT)
MIME-Version: 1.0
From:   Tom Levy <tomlevy93@gmail.com>
Date:   Mon, 9 May 2022 22:59:02 +1200
Message-ID: <CAMtU5-i2HzCOqNfvOOrD9mKzmYPNxJPs6524=LcqqAY94EWtAA@mail.gmail.com>
Subject: [PATCH] clock_nanosleep.2: tfix
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Content-Type: multipart/mixed; boundary="00000000000020748805de921a33"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--00000000000020748805de921a33
Content-Type: text/plain; charset="UTF-8"

Hi,

I've attached a small patch to fix a spelling mistake (CLOCK_BOOTIME
=> CLOCK_BOO*TT*IME).

Cheers,
Tom

--00000000000020748805de921a33
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-clock_nanosleep.2-tfix.patch"
Content-Disposition: attachment; 
	filename="0001-clock_nanosleep.2-tfix.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_l2ylwu2b0>
X-Attachment-Id: f_l2ylwu2b0

RnJvbSA4N2QzZWIzNjQ0MjMyYmMyOWZmY2YwNzYwN2QxMzI0NzI1NGY1YmJmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBUb20gTGV2eSA8dG9tbGV2eTkzQGdtYWlsLmNvbT4KRGF0ZTog
TW9uLCA5IE1heSAyMDIyIDA5OjMwOjE1ICswMDAwClN1YmplY3Q6IFtQQVRDSF0gY2xvY2tfbmFu
b3NsZWVwLjI6IHRmaXgKCi0tLQogbWFuMi9jbG9ja19uYW5vc2xlZXAuMiB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21h
bjIvY2xvY2tfbmFub3NsZWVwLjIgYi9tYW4yL2Nsb2NrX25hbm9zbGVlcC4yCmluZGV4IGI4YzRh
ZmMyYy4uMWQ2MDdlMWNlIDEwMDY0NAotLS0gYS9tYW4yL2Nsb2NrX25hbm9zbGVlcC4yCisrKyBi
L21hbjIvY2xvY2tfbmFub3NsZWVwLjIKQEAgLTkwLDcgKzkwLDcgQEAgc2luY2Ugc29tZSB1bnNw
ZWNpZmllZCBwb2ludCBpbiB0aGUgcGFzdCB0aGF0IGRvZXMgbm90IGNoYW5nZSBhZnRlcgogc3lz
dGVtIHN0YXJ0dXAuCiAuXCIgT24gTGludXggdGhpcyBjbG9jayBtZWFzdXJlcyB0aW1lIHNpbmNl
IGJvb3QuCiAuVFAKLS5CUiBDTE9DS19CT09USU1FICIgKHNpbmNlIExpbnV4IDIuNi4zOSkiCisu
QlIgQ0xPQ0tfQk9PVFRJTUUgIiAoc2luY2UgTGludXggMi42LjM5KSIKIElkZW50aWNhbCB0bwog
LkJSIENMT0NLX01PTk9UT05JQyAsCiBleGNlcHQgdGhhdCBpdCBhbHNvIGluY2x1ZGVzIGFueSB0
aW1lIHRoYXQgdGhlIHN5c3RlbSBpcyBzdXNwZW5kZWQuCi0tIAoyLjIwLjEKCg==
--00000000000020748805de921a33--
