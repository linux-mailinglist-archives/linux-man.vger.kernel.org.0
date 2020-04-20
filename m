Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A56331B035A
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:48:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726161AbgDTHsy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:48:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725930AbgDTHsx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:48:53 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF640C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:48:52 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id u13so10868775wrp.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FiZ6A4DiuHZDhQuFGiGjaVMjfhtQA+rKRP4eRwCvTnc=;
        b=r8jdkmjBqcXsWiUgwERj8iuSn0nSwfougK/qYa9ZDqqCiYuU2jobNgcCSqu0Gq2Rxe
         WPXbRby5MgSMKDoVBqX7z/9SR+ZCF4xuhJQKc3LS6GG7bvgkxX0nUla1fGffIzR77hFa
         slzxeY3i7uvFPn7DN/99kyyTpByLTI9vHLv90xqqPP6hb5eJEKmp9d2O6KCACDnpfsa+
         Mmz4HcuZ+NPzbum7ABbeTrZhfwqXXtN9BPbtr6qkHTHEcUIEYSBZpzrc6/jcbVvnCuDC
         KY0WYAL/CZR/WMfBL+1/LohQzppTFjgs75TQs/KcqB49xebKqBeAIHWZ3G28RezrjUie
         SnkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FiZ6A4DiuHZDhQuFGiGjaVMjfhtQA+rKRP4eRwCvTnc=;
        b=Sm0PdaGH5N4q1b57g0OUCfNk5o3XaFNqK75jrZTeD04Er4HWcEoMzx2LFwg0dCDbJN
         mfr9ocf9RjrJXaJRkyJrmT5vMHoD2zxY1RoiWCgrqKLyD91t8NC77RLwqqmqm3YyKEPt
         GgeF1ilQv/KhYyQcVnoDFVCBxFWFY9fkDSmSPNMuv19QoiGl7JLT3hAuBT81ANwdWYYB
         bM5XmqvyZa/vxESAi/oZnPKnzwegoBkqEz7Vq1smqO+8uiBt25fd3bET8DD8vdMQdTaW
         LzOewcduKR0ijRzQ0AQu12I4n9Vvnlung0k+vUj+LnjtxubS19QYvzSU7e0GmVUkYw2r
         v1RQ==
X-Gm-Message-State: AGi0PubKehlXN+yaEVqH72+R8CC7iJc+kKajBCDraUDNdLFaZKmE7Jxu
        /tzjHpRUBDENASoAtYKdox3+nYhw
X-Google-Smtp-Source: APiQypKwMo0zWosPPfqrnI94Yj9hN8NqgDBb22K9Dl9QdHaV7PNmxbI5x2yjhQPjM16BSRrEJf8PiQ==
X-Received: by 2002:a5d:460b:: with SMTP id t11mr17048986wrq.319.1587368931570;
        Mon, 20 Apr 2020 00:48:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id n9sm52346wrx.61.2020.04.20.00.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:48:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: getopt(3): Colloquialness
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064803.GA30770@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9f971277-c2e2-d5d1-d2ea-f93b65410d7b@gmail.com>
Date:   Mon, 20 Apr 2020 09:48:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064803.GA30770@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
> 
> **
> 
> use of we
> 
> "POSIX.1-2001, POSIX.1-2008, and POSIX.2, provided the environment variable "
> "B<POSIXLY_CORRECT> is set.  Otherwise, the elements of I<argv> aren't really "
> "I<const>, because we permute them.  We pretend they're I<const> in the "
> "prototype to be compatible with other systems."

POatched as below.

Thanks,

Michael

diff --git a/man3/getopt.3 b/man3/getopt.3
index eb840d045..9cedb05d5 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -350,10 +350,10 @@ provided the environment variable
 is set.
 Otherwise, the elements of \fIargv\fP aren't really
 .IR const ,
-because we permute them.
-We pretend they're
+because these functions permute them.
+Nevertheless,
 .I const
-in the prototype to be compatible with other systems.
+is used in the prototype to be compatible with other systems.
 .IP
 The use of \(aq+\(aq and \(aq\-\(aq in
 .I optstring



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
