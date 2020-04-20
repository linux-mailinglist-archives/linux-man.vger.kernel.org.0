Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50BF11B1488
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:33:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726123AbgDTSdo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbgDTSdo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:33:44 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D77CCC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:33:43 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g13so11413152wrb.8
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SgD8I83QvNAkw68rVC9moEw5RI5UgshqPO60Fiz2P7c=;
        b=gB0WLlCmjxM5rPXeSu/hvdL0mY6ik3JNyJC8Sx9Djj5JCobufUbJTvjBJ4YlxtHo3q
         Zo8Er/BoJ2ZE7ePi9j+r1vFsMoy+Kz22XTeP07csln8LLYaETFQcnc6vjgQxbjK0Ap9k
         dXZb94xKI5RGtF26ME2vcWZyU5COAb0CxuZJK9bCoOk5Izuvmt+BEfU+V+ZosIC2mQtj
         EnMWLY8sAy0/GNlQ7TzdKMM0EPJPKg5qsXG7qHJkBUaJH7BodyFSDDNlCcqX8gpnr5FN
         gpE6dK76YUC4FN24lMusrSml4kPp1rBpiCgr9SfMh7B6rZiRFHiWE8LKhmE3KOejZrxy
         Gxjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SgD8I83QvNAkw68rVC9moEw5RI5UgshqPO60Fiz2P7c=;
        b=nPJGWUOjXnXpydSEMAwMe6UzKry5tCXwZfPnIe25/GyAuRkjrqfMMcqnNwrPpupqRQ
         lYr3xU8HBK1yMkZGl5OhlZWUUCxm/8ye9ezKtP4LInVPiiUuCmMZMArhsaf2U/3lHns2
         9jg3sQZxSlok93p2oK9PPXTo5gYhgmFQDhJwE/42MHSIF+MO/bVl05ILUjhCiarXEsOf
         dKeF8PMdEEmjXsRoSDvD7tIZ4aHNXkzVyk+CoOEYPN7FUyN4ppsOOwJBdAg9YGWarKnS
         7OJ54Y/PbWl0gxRhmrkxj1Mz6eEjve9qUy6rbCLzcshq4WCeB7IWxnfP+uB7MGeYo9t1
         BOnQ==
X-Gm-Message-State: AGi0PubblNXheP4tMfzJUSD1NmI/2BM6xEfISzXWQi/LtKoLXT8Lqkhw
        TK+Ya3hgRa342swJf5y9Rphz5xqB
X-Google-Smtp-Source: APiQypK5qZONaihnEtX0NwFJAuUacOnMVI2q6PBcASyCYombB/NRUJ5vYwFP5CJd3IitY3iIdgObvA==
X-Received: by 2002:adf:dfcd:: with SMTP id q13mr21516573wrn.423.1587407622314;
        Mon, 20 Apr 2020 11:33:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id z16sm464323wrl.0.2020.04.20.11.33.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 11:33:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] adjtimex.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200420135600.450-1-jwilk@jwilk.net>
 <20200420135600.450-2-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d2ad82cc-ad9b-6d65-9cf6-d2f34c0e1014@gmail.com>
Date:   Mon, 20 Apr 2020 20:33:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420135600.450-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 4/20/20 3:56 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/adjtimex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> index a45dece9f..1722369a1 100644
> --- a/man2/adjtimex.2
> +++ b/man2/adjtimex.2
> @@ -528,7 +528,7 @@ where
>  is the system timer interrupt frequency.
>  .TP
>  .B ENODEV
> -The hot-plugable device (like USB for example) represented by a
> +The hot-pluggable device (like USB for example) represented by a
>  dynamic
>  .I clk_id
>  has disappeared after its character device was opened.

I remember seeing that typo, and thought I had fixed it :-(

Patch applied. Thanks!

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
