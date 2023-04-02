Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D6E66D356A
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 05:57:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjDBD5e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 23:57:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbjDBD5d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 23:57:33 -0400
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0549E21AAD
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 20:57:32 -0700 (PDT)
Received: by mail-qk1-x72b.google.com with SMTP id y7so8037055qky.1
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 20:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680407851;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I3BZl6w25tULUj2T+KaHq4yZAA4z1eqD7qm4PeAjAB0=;
        b=bt8LP0St8bdtt2hVwHkJMEOln+O/UvV3cts0hKVOL2ykowFCPgKhnZCq+qr/sV/ihN
         jIvMFkliTx3l5Qk2AO1R8EjJez97xy7LcJl6/odkwFNIrh1qoo6D2AtYzPJjMbZwpVdK
         BcqP48XkKmrPc9jl8DwvLiSbwlUr4xxZfqSavw7ILIL7C1/u8mAqIWbXTm0xghZUxPmW
         umqycaIGl0kiqNu4uoIN+63jVX4lCKlRn2LNE2Kb0brJ/E9Ceiffrz0Pgx7bNqyDd3ID
         TiP0UEyQ9K+H3UC1BLicypY/CvO7b+7G0pAhqZJ4Jjr9zI5pP9os9ZcDm1CV9E2nx+GV
         aZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680407851;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I3BZl6w25tULUj2T+KaHq4yZAA4z1eqD7qm4PeAjAB0=;
        b=AKNhp/kQjFBsKh2BQwnEn+qRc19o3MUQi66qqjwNdfjWmK7XAFrb1c2yMDPMuHt6WX
         JbGdvYU+94Oiscxx9QDP5lMzuI7Ivx5+NTLzpeCkE+WhBrwGad3XezzilfPg3ifKck5N
         DGv2ULQk/GLB9eu45ZFvhYX346Zs5kQ+gCh/KaRE1CKe40mfBNnl9mLcIPCzGn/y4jfy
         1ZjVAUC7Oo1cBN5Hpl48sfdGxDBvmpJ55cSIWW6P5FCBzd2M0eX9Rc6Rup7NqCyaV+Pl
         eqliqCHyQhVB+lr7sw2Qb2BuKbjI8HScUtmIvnc4ruGgUdbF5YR8+Ilix5USGaU6OEc2
         3H6Q==
X-Gm-Message-State: AO0yUKU80Py1FC0iD9ryNyZsJ/qZ2BHbPxLLdMfoZp/yUHQJ2QY6Ty1H
        ikqwYYgPisJ9DmnzdEYKsWI0EZPEvsr3hwV5yos=
X-Google-Smtp-Source: AK7set8iaQzSoDulMvw6mEIKQ2TDNBTKthm7OfvgrL4MVv9E+a9nZjwWqasYC2OlL7NdlzVLX+EfYlO8AsvE2/G+Xks=
X-Received: by 2002:a05:620a:24cb:b0:742:b556:adb3 with SMTP id
 m11-20020a05620a24cb00b00742b556adb3mr8491790qkn.2.1680407851121; Sat, 01 Apr
 2023 20:57:31 -0700 (PDT)
MIME-Version: 1.0
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Sun, 2 Apr 2023 11:57:19 +0800
Message-ID: <CAD66C+a5Ohowu+sVHV6dA7C1QWe=BqnEUJH52NHMUpNay22hQw@mail.gmail.com>
Subject: INSTALL may need some elaboration on which man2html(1) to use
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi uh,

A recent catman patch by Alejandro drove me to try and look at what
the current state of man2html is like, and to my dismay the Makefile
didn't work with the "man2html 3.0.1" on my MSYS2 installation. It
turns out there are at least three such programs around:

* a Perl program (which is the one I got) dating back to 1997 and
still having a live page on "nongnu"
* a C program by (presumably) Bruce Korb (can't find the source code!)
of AutoOpts.
* a C program by Verhoeven and Brouwer stuck without a homepage on the
web, last updated as man-1.6g.tar.gz. (+39 patches from Debian, welp.)

I assume from the invocations that Brouwer's version is the intended
one. Do we want to specify that in the file, or do we just wait for it
to be replaced by groff?

Regards,
Mingye Wang
