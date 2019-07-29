Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F05F678B80
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 14:14:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727484AbfG2MO4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 08:14:56 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:39510 "EHLO
        mail-wr1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726972AbfG2MO4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 08:14:56 -0400
Received: by mail-wr1-f41.google.com with SMTP id x4so8433686wrt.6
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 05:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WpjAgMYDg5rFayFSyU1eBNXvSlA64JTX9lfnpJyzu6w=;
        b=iwFLwPjLKgiro6Bnqe3AvKMWsROK0799Ppxqv/YCMeTfF3iYScB/6toPohKaaxSNKx
         kTOBs3X57sYeUkAg62UQxGdQrKCpQPrdbvLihzIncClmappW+KwdPnhE+BwuJNajMV0U
         3UnBsXEQFkkP0yvWhgxcHSH2CsOfph82n9A2jUDCd+OB+Hc2dPGZa9UZz5TzFNpX00N2
         jBRGKv8Lti6JkUV9gn0fXM/3J42OJFK0tMMvlQfBiQZ20QL4L/PbMH5JzVc+c+4DrrE9
         bkCG8x5duJwy5eOmYbO1zkpFtBb5V0NXj7l+tNiQWzcswf4SnSqHWMERqJRLaqP6oJh6
         5rHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WpjAgMYDg5rFayFSyU1eBNXvSlA64JTX9lfnpJyzu6w=;
        b=WoxcXsjOHWSq4pakn/x2mukAaM6RVMoBapHFVJmuOFJDXieEkMG3GH9lHSjvx5Kpmq
         fFoRpDr+ycYGwuxdOF4Q7LkJJlkVTLTXBMr+biwWLihDX/LE6HJFfXi+h7zQTqjJ5PzI
         gdihe+uBvgC9/s5T0taC7UVE3e0CRlaqs8ufvWghCX4AR6ZprEcOjBgpSGV+7ikolOct
         OkhfH29RuWcLyW9311KWHCg+poRStdCAn6DSDtCdRBsmHUMX8TDx8q/3HnQoiR2kJuVE
         HIm0Amg8+18xq2M3lhEXLYrbGEGv0wZ7coVsqCVRbEotO1eS7/ijqqgbs28XWasF5OFh
         5gQw==
X-Gm-Message-State: APjAAAXVnkf41XoPq5bhRrozTFgKSX+dab+qul86vLQa6n2UGjngmUIH
        zKqldKyawojPJLv+iqC1/rU=
X-Google-Smtp-Source: APXvYqw6SYI8E+0Vckl3v8a8534kvFpfrSaRAFZF8t682WyPBjkVbABbEENGlgN9u+GhKF0UkQhqZA==
X-Received: by 2002:a5d:6144:: with SMTP id y4mr122776831wrt.84.1564402494435;
        Mon, 29 Jul 2019 05:14:54 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id z6sm54989848wrw.2.2019.07.29.05.14.53
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 05:14:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: pivot_root(2) on non-mount-points
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
References: <20190301184553.7t4q6ylaxqnfjbyh@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2c3aec53-782e-95ce-da30-c23114a9e9b9@gmail.com>
Date:   Mon, 29 Jul 2019 14:14:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190301184553.7t4q6ylaxqnfjbyh@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 3/1/19 7:45 PM, Jakub Wilk wrote:
> The pivot_root(2) man page says:
> "new_root does not have to be a mount point."
> 
> But I couldn't get pivot_root(2) succeed unless new_root was a mount 
> point. So I dived into the Linux source and found the following comment 
> (in fs/namespace.c):
> 
>  *  - it's okay to pick a root that isn't the root of a file system, e.g.
>  *    /nfs/my_root where /nfs is the mount point. It must be a mountpoint,
>  *    though, so you may need to say mount --bind /nfs/my_root /nfs/my_root
>  *    first.
> 
> So I think the man page is incorrect.

I agree. And I also tried testing this point in various ways. I have by
now already amended the page for the next release. Unfortunately, I forgot
about your mail (I rediscovered the same problem independently.) So I
overlooked to add you in Reported-by:. But thank you for the report, 
since it confirms what I also (re)discovered.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
