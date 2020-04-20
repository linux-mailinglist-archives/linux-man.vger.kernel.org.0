Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B1531B0327
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726055AbgDTHf6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726324AbgDTHfv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:35:51 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 896D0C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:35:51 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id e26so9799095wmk.5
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yrFGvUUXzlTKa5FKDp0EKQsV3u1iI87+nddTeaKQrQ8=;
        b=GNzGG4oSW8gEKmpHWQ9zPLmT2evJRSikHLINztFPqmsXx8mJ3nBh2Q5V1+6DkacJ2I
         wHkknxnJKFRP2DXOC42ac6dGZ4lfN3Q5Sm9sqESvZSnWMZBD7t7y8edrQ2JHXWuFeeon
         v+YDYjyfPyoD7b5myVaiaF1B+X4nP7oJzGwVUN8w8nPTSPtOSP+kLRNDyQOHBBbmcqpn
         Cp0xY0Mr+2BAGOpp3o+gt7/uwTJuZ2dbl5czkVtque1wkoBZRihsAbsQAC2CWD8Dpzge
         BhF+q7iQNdCLMa1bv62q8NgI8d+I381Hb4oFLoy3H5yqCKcj7XdXJZRJLti0YBDwuD2k
         YVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yrFGvUUXzlTKa5FKDp0EKQsV3u1iI87+nddTeaKQrQ8=;
        b=MiBdcUmUMuJAri+IcDMddcCXSfSYoNPd0KGQw975wMwm9ptjWW/Jm0du9CF/inhJss
         ACSWrGF8E15kLBa4aV7NWtCvTvzR1a3qMNZl+atkmw8cZouqZbO716Pc9rO1shkI5ZAe
         YJ+kURjPYNjaxa/lOegV6luDviIH2nJXXkrpRxepO90Ea21A7GgLggoAoagRgJ2LbI1P
         JULoc/oXxo5c6SshNlBcVTPxjGTHqMQsQJpLTdCh9eXGUpmAosAWUQXZoMallwC1huIa
         050IudLIQgBPzI+QhNGvzbcvP3utdvtN5XFLYhBgvw7DzKuGseicwM8ivVWfzP4HAlK9
         GZ3Q==
X-Gm-Message-State: AGi0PuYtsguHDSL+Yc/IkUJLQPHHklZYXq8KF1/ULiQllt9AvBVU6HWe
        teE13MaxVvv8vj9dAd3d3rhRlmre
X-Google-Smtp-Source: APiQypKt/reSP+kgyZrR5SuG4Md4YdkSEBzLcQ+o01aQtBTpejX/3do9LjB8aPs/lFgA56ZJaFIscg==
X-Received: by 2002:a1c:4346:: with SMTP id q67mr16023216wma.162.1587368150179;
        Mon, 20 Apr 2020 00:35:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id v19sm16593wra.57.2020.04.20.00.35.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:35:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: st(4): capitalization
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064826.GA32048@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9ab1dcc6-5821-4081-b579-2c6921bb39de@gmail.com>
Date:   Mon, 20 Apr 2020 09:35:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064826.GA32048@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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
> Tape → tape
> 
> a) "Magnetic Tape operations for normal tape use:"
> 
> b) "Magnetic Tape operations for setting of device options (by the superuser):"

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
