Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3868E1B0164
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgDTGMo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:44 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 519D8C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:44 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id d17so10552882wrg.11
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QY1QDzhImN3TfDHn8veUx2lLSbRy86uxNHlGuUGRczQ=;
        b=YDB+pjDAAJcBAt9zByrN9cVpk31ZjRa4SsUQ/tgSxiwIRwMp7+xiMkFz/ZWhqg0QQe
         hZi+3+RRQQGuR43g9+gluTaUF/DqjnDpgUnSJFXIvFKgNOMIkuXhBXzN0Wt0jj60vIWZ
         rO3F/TEKcORlwRYH+qIJK9p2kapj1hbVyQo5Vr+C4PwSlt39SiuFpoPEosOnMKb5HcjG
         Yg5w4sRFSgwVFD32UxGQaEGjtTca5vqwmAjdLUNXaC5njKX+GyIDa7MHQOSZEkmj7l13
         38c/NmF9v9yXpF5SwYZb0woLTjE5GfVwBoCjI9mkm0TJbKiB8GYW7ebJnq08dN+XXfM/
         H4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QY1QDzhImN3TfDHn8veUx2lLSbRy86uxNHlGuUGRczQ=;
        b=VDFgItqQZgup1TNwymBjreTn2hz8DjqEaDza6x2wYl1CvyJbtEuh+HIIgB976Azdxb
         HIp+/Jl6Ewx6v2b8nRe244/nxOt5Fc1m0nQWgS+b4hxyl1+qklgFpq2Di9ySOCqhzAhY
         0JcBE9Z4AArDOVxktjnksOeWX6cpW5Or6w4Zs0EUVcCn/vBxP9DjfizElueuhHg7ipWU
         KRlCIcEpXceDxEAxwH8hP93snypN7E5WXj4hO4zoq188VhaUL6dnqf+DTNC9+72K0wgz
         cU71Gsk/27Wffx1c36hbijZVQdl3HA9918qDIxStcnZffvssuC1Xyxd2ujh9CUf68qmc
         cEYg==
X-Gm-Message-State: AGi0PuYhpDwy3Wrp+9lbuZUS+UlOkXsQ38MqZ5o2EBp8Dp2CYGbB6itn
        +HLBaQ+gBjVi+2pZ+uwPy2U9hlm8
X-Google-Smtp-Source: APiQypIAypeliyHJ7aNPnM+K03fu+ij0qZ/JDS7zzHZTjxHlDoCihwfF8MEmKamKxmVASYavmG2pXg==
X-Received: by 2002:adf:ea02:: with SMTP id q2mr16413434wrm.31.1587363162895;
        Sun, 19 Apr 2020 23:12:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t16sm18374864wmi.27.2020.04.19.23.12.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: scanf(3): Missing bracket
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064822.GA31818@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <251a1876-264f-01ca-ad30-35211b7a053d@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064822.GA31818@Debian-50-lenny-64-minimal>
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
> Missing »)«
> 
> "Matches a pointer value (as printed by B<%p> in B<printf>(3); the next "
> "pointer must be a pointer to a pointer to I<void>."

Fixed.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
