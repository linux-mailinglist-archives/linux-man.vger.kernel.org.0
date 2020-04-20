Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6278B1B0657
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 12:15:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726025AbgDTKPA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 06:15:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTKPA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 06:15:00 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0BBAC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:14:59 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id j1so5967644wrt.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tJzFr6wXPfcQF5OzMbT7Xi6PS1cKa7Wic01zdsPBoGI=;
        b=rFxIDSybObRhaNy5rbD/sGs0i2vjnnksllCMQ1uhagjoP+HmEkgMZbAS7Cn8nBMSb+
         zIBUVzv0+6naZbNW8Hgd98wriGDUYqk6o2yqQCsIWdIXI14jUc15bCOuRu17vKwq2sYo
         qkLangn82Ll2vLzVyZ2vzEIYsooXlZpLwT6ThTdzsdGEoPWvtBJOZer99jbX3K7OolLR
         JFoYMMalaKeN6xVb5LhMOAmZllWHpm6A6z8/gP7t4AMz3Z7vGHeIgXt1ve+ygg2KmNc9
         XMP9t1UpxqifwniaMOKoATau4CQW3oJ7Rm053Ak1ZhHnBZXWooAuRKtlp2j0dt2+2HtN
         nWsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tJzFr6wXPfcQF5OzMbT7Xi6PS1cKa7Wic01zdsPBoGI=;
        b=SZRvNOOL8XLByuy9z4I15PvMO4tN4PERWOXE77IqSAdjTTvp2vu0tZoqR8zCbo6vUS
         vM6LCm+7bdInY4K7I+l53s2OFe2Nhn9kKrR+Er4/2rdovYtWf6OW1facYyzvMjBzq1bG
         +YXSnLxaBqb+1Lswda+3dKbIgfW1s5+kCtHF/QiovhpGtnSoCsmryUPTcKb4AeUOQri5
         MCVWIbp/MDO2DyRwlZ1yIDGjQ6Kfm7d17JLN85SEHpCRalPeaHxYoOEikvDHdDdWoCOB
         Z187rix5klGglWJODfWFUihhvYZpGIY95uAUFtQhFiRwrbizPioFEO9wdoP5TL1AsUp8
         avJg==
X-Gm-Message-State: AGi0PuaU513RIB1VsVH1hqLjDZxlRkiMAKYNdMgxCum7+psbUNdaq6+l
        ApGqKY/Q0ld6nbjULCC7jH9Gh7lQ
X-Google-Smtp-Source: APiQypIzWM811W0ul4bjqKfFG3dBHvBEIjmTr0M60/eSIVzPds1FuZxQM8QvGU8ifOPTxD0d4tOYiQ==
X-Received: by 2002:a5d:6b85:: with SMTP id n5mr6682546wrx.370.1587377698224;
        Mon, 20 Apr 2020 03:14:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 138sm822601wmb.14.2020.04.20.03.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 03:14:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: mount_namespaces(7): Understanding
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064811.GA31185@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ad0a1641-75fe-e872-b7ee-04fe3a864808@gmail.com>
Date:   Mon, 20 Apr 2020 12:14:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064811.GA31185@Debian-50-lenny-64-minimal>
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
> What does "come as a single unit from more privileged mount" mean?
> 
> "Mounts that come as a single unit from more privileged mount are locked "
> "together and may not be separated in a less privileged mount namespace.  "
> "(The B<unshare>(2)  B<CLONE_NEWNS> operation brings across all of the mounts "
> "from the original mount namespace as a single unit, and recursive mounts "
> "that propagate between mount namespaces propagate as a single unit.)"

I applied the patch below. Let me know if that does not help.

Thanks,

Michael

index 87d872ffc..9232b4b6e 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -97,7 +97,7 @@ This ensures that mappings performed in less
 privileged mount namespaces will not propagate to more privileged
 mount namespaces.
 .IP *
-Mounts that come as a single unit from more privileged mount are
+Mounts that come as a single unit from a more privileged mount namespace are
 locked together and may not be separated in a less privileged mount
 namespace.
 (The


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
