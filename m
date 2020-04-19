Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 073BC1AFD92
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:39:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbgDSTjm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:39:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSTjm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:39:42 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC01EC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:39:41 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e26so8572254wmk.5
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=t9g9ujc9bo6QrTbHiglS/2NsmT/Y6p4n34IGFtoDaTQ=;
        b=GkM+Vt3/c4Rq/T6uEb8p7ja5Nu4A85zsDx6/pkclkAhGymOOupzah1B1kedD4cRIxM
         5DWjUahcpmgN0bkupW08qK0KQ/dv3dgNZVfTYuzNp0H0t6acTGoNQTaAX30IZ441GtwM
         UoJafVi0f/p14KUl4fnuHs4bkWRr39V5rE5hzHlSxzlhbNDLV3zubZCXjo42YcC9wyUf
         2EbUtS3ak9A5lMhoDmQUO9agKh2m9UwLdIdDmAArvjjdoTV1HwgY08wGpgjEvCTX2q1Q
         LGqtz78MDaAV/KUfrGymik20/8FDh3iNvTvgGAY78quWYPO5kq9X2oTUy+CvByjoU2Zh
         vuhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t9g9ujc9bo6QrTbHiglS/2NsmT/Y6p4n34IGFtoDaTQ=;
        b=RovX0Ydx6TNuuLYhUq4XY2HWISwPpLYhXeJxswzx+LxZ0/opZ6IaApHndv7nx464Fg
         kPJ/XVrpzW+MJ6W1ISXL0HJ6LehIRcYsYaT2PRUVDlvSSVjTXdI0XJwwlBp0MJOUTbTV
         wIcQNb6ZFW+pEfSuTk/YnnhJaZjz8glNHmIBYrF0lujCwtl6646vjlGoehtAzc4+xni+
         qL5ZVhvk6niJ4h6rGHgMCYInDwA2VqSKEHTUpF7FIg7qOlPvxcK1y6FREWKEtUVqNGJW
         23WsupTmDrwYyuBmB/sUl6WoyW+UIuATW51RLjvSfRuMW/0P+KgJT/xPMyy0L38/sBSp
         NVWw==
X-Gm-Message-State: AGi0PuYaM9B/2ADsq19qJI+ejJq+wqF8lqcvls5lxI7ypWELS4ol5rxy
        /1vAF6H367ZewdzR+pNdysBlyY34
X-Google-Smtp-Source: APiQypJVhKPKH60fGxGxgZ/IpzkIZ5/vqXbiyDqSH4qvPi/85YvNBNyYx+6QoHajMclq6eIcU8I8lA==
X-Received: by 2002:a1c:dc0a:: with SMTP id t10mr13523312wmg.113.1587325180566;
        Sun, 19 Apr 2020 12:39:40 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t8sm41062892wrq.88.2020.04.19.12.39.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:39:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: swapon(2): Typo?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064831.GA32354@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e4695341-dfee-a427-ae34-8f464e12089c@gmail.com>
Date:   Sun, 19 Apr 2020 21:39:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064831.GA32354@Debian-50-lenny-64-minimal>
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
> The variable "flags" has not been defined (above), is swapflags meant?
> 
> msgid "(B<swapon>())  An invalid flag value was specified in I<flags>."

Yes. Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
