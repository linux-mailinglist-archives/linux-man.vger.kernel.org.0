Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22EDC24EF05
	for <lists+linux-man@lfdr.de>; Sun, 23 Aug 2020 19:24:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726502AbgHWRYY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Aug 2020 13:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726664AbgHWRYW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Aug 2020 13:24:22 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 414D1C061573
        for <linux-man@vger.kernel.org>; Sun, 23 Aug 2020 10:24:22 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r15so6423810wrp.13
        for <linux-man@vger.kernel.org>; Sun, 23 Aug 2020 10:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rZhDJvg403K899bXG2NVSHf/IqDFA4/4NKyOMP7XdOY=;
        b=mqSOhD4EJY98hsXuQhwsHyE7fvWCPewNRbHdXLl6ghFrvQVeSJzq6r6j7m64VuXc4t
         9FBJL9BqWt6c09z7tLHn3ucyfvTyi6t60YDz9bk7g5qKeah6F9gyToDzCm+q/Ev/mrsE
         KUwCQmcCA27uiCFo8zQVQVZcAVABP4kxy/SS129+ZYmcmMgIp0yMqQaHZR9YkduRDNrQ
         4Z1fvOV+xJoEoRfaLTJKRjzkAmcwOhOWoqNC2PZj4s9xOFahCyi4GYnF53nJnYnvME+R
         BQyZl9wNC+/O28ijIv7d3afB6nzxM3gGTwzXemHS9rdZNKD5RSYaGRoozEkNufbEJt4W
         qCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rZhDJvg403K899bXG2NVSHf/IqDFA4/4NKyOMP7XdOY=;
        b=g6tncof0NRQ9fndQgOv0Msni/H9gWq3aldZjGowMSiBnJE4nNV41H58yKwEueljHty
         CJpctHrgq/uoVo5OUK6IVz9/q41ca4rLLdef8ocEJw4S/biUOLmERmOOqkJRGqyWftmJ
         wQCF0f6W+hjtq2EgCbkBC2lb1A9IAyqa5Zj80ZOqC/YxuK6ULhFlF6/2XKqs5zmaBJ4t
         vntFaOQ7ilfTbrwkzJX6R6HVlvyEx+A9OvVWcUw0r2RwR9rZTrJnlpPSZoLFrK+TqwSn
         CAOrMpGYHGXC577oslC1ia9kDaj3meP5IA69LweBwTYFgSARsbBN5d3DwdXIo3Vtv15X
         blDg==
X-Gm-Message-State: AOAM532bqtawyM04p3XUwebcWq50K4+xUg4hY7ZRMAYsC3C7SDC8ccU+
        YYm7OZYmqkqX6fzBFzbqQMB1Gk6b7z838A==
X-Google-Smtp-Source: ABdhPJxH7SOLwbR+9DOzdaxggYWFeHVS9bSE2/IXLC2h0b4sgvpLxnxnWLY9CCUVVrufoMKoRgZovA==
X-Received: by 2002:a5d:5486:: with SMTP id h6mr2231672wrv.136.1598203455649;
        Sun, 23 Aug 2020 10:24:15 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id v67sm20131141wma.46.2020.08.23.10.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2020 10:24:14 -0700 (PDT)
Subject: Re: seccomp(2) example still uses SECCOMP_RET_KILL
To:     Rich Felker <dalias@libc.org>
Cc:     linux-man@vger.kernel.org
References: <20200813162440.GA16696@brightrain.aerifal.cx>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <44929384-af83-815a-d19e-d6e996666d66@gmail.com>
Date:   Sun, 23 Aug 2020 19:24:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200813162440.GA16696@brightrain.aerifal.cx>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Rich,

On 8/13/20 6:24 PM, Rich Felker wrote:
> I noticed while reading seccomp(2) today that the example code still
> uses SECCOMP_RET_KILL. This is unsafe in a multithreaded process and
> should be considered deprecated -- having a thread asynchronously
> cease to exist inherently leaves the process in a permanently
> inconsistent and possibly corrupt state.
> 
> The example should be updated to use SECCOMP_RET_KILL_PROCESS and a
> note that SECCOMP_RET_KILL[_THREAD] is unsafe and deprecated should
> probably be added as well.

Thanks. Both things now fixed. I added a warning note that pretty
much uses your wording in the first paragraph.

Thanks,

Michael

