Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 877351AFD5F
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:22:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726099AbgDSTWW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:22:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbgDSTWV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:22:21 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A01C3C061A0F
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:21 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s10so308283wrr.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=/rs67sKPxcTk9VgIvgaYmjMOgGwZp77INIpXENDNf3k=;
        b=XcgVz3enYSelmFz+++lDuAKfHKoKBk2v/i3J00l81sDKMFpSmwQvo89GJjzV0q9n80
         rjKUR0RUiBpBqMzFGAZBwzfkDxyz/z1B+axKgtmVt2FCQbYwt0lWYojDu9kN8GIfv4TM
         fYaM+ZuO/koitb1GJpd89J2EV53J6JXt4NXiCXSPo6OdLJH5G/PZVr8iez15irQJCYQ3
         elzHW6qdgzmy+WxDrNrEthHdw/NtK7PFDsLqgiGWBN0POSOmaCxPbvut5wLrqp0DssbZ
         NOzVjMczPi2hHb1OeK/eW01AR5LhsBAB9QKyC0sLcKIJuTEWGnHopY3OO20I+9uwHqYx
         DXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/rs67sKPxcTk9VgIvgaYmjMOgGwZp77INIpXENDNf3k=;
        b=bOqCBBIUDQWbPw3dG7hnI3JZK9k2Qolky57kRfiVnUi52fNVl4kohzduDAtBkmB427
         IblvflJv1hl24Q6jk7iIU1g/z1d9E/bRSj4ytIbRFCJKnsvD7oqZ46XE5HizUHDr+BeJ
         sEahv9jwzh1qBBFJ+wT7263jHQ2ordZ9ddO5kb8zO6fcM3cXoMNl8r+1usTFQBCR5bEk
         tVooYvOe756TVHRv2go9lWEulqJkc8pwzBL4xg/bfgxXXXn4td9LBLgbXTqgOqSbo9ue
         qaalWQs+DQ4oyNjXDPXNkAQirBx5+PLNXxX8Bc2bYIxgXZxkVmAqcfCqkQa8kVIB4741
         83FQ==
X-Gm-Message-State: AGi0PuYJG97D/vHkwSAlLiYNvsxdXe00gBrP2WQRvR++9bCKkXM9EEit
        juMlU8uS3GsAnQ8xfEQZSAk8vNuv
X-Google-Smtp-Source: APiQypI3zr5KfYIaSmrG4q2pQyGAcjhCtL/49L8HFp5mWbkUmmMqvVxOWumU0KF99sHq1dIkw2xwug==
X-Received: by 2002:adf:dd10:: with SMTP id a16mr14583640wrm.26.1587324140190;
        Sun, 19 Apr 2020 12:22:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id n6sm16202407wmc.28.2020.04.19.12.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:22:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: gcvt(3): Content
References: <20200419064801.GA30630@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b7a31472-0dfb-2d4e-c8b6-0335ce38fba5@gmail.com>
Date:   Sun, 19 Apr 2020 21:22:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064801.GA30630@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
To:     unlisted-recipients:; (no To-header on input)
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
> Is'nt this simply a pointer?
> 
> "The B<gcvt>()  function returns the address of the string pointed to by "
> "I<buf>."

I made it: "The gcvt() function returns buf."

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
