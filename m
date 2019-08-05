Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB548194C
	for <lists+linux-man@lfdr.de>; Mon,  5 Aug 2019 14:29:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727357AbfHEM31 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Aug 2019 08:29:27 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:42936 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727349AbfHEM31 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Aug 2019 08:29:27 -0400
Received: by mail-wr1-f65.google.com with SMTP id x1so34327591wrr.9;
        Mon, 05 Aug 2019 05:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eDmkN+7wGSJU2DjKyEwaukLGa3ezBnxw3XEDIe2B94w=;
        b=bARF1mE/lc6ikyx62WF/Ii8OjR9AP8W9/7NFmugXeJrGhRSt0ohxhVtDeo9QPEPLZE
         aPFJkTobwEnfOj6yjex46mb9RNnRBf5yDpg8xknNYl41OtRgL6DsnOt5/tqcr8ExACjr
         S+C/4+pbyhfrnjexEs+wB04hTKvBxvk6WCXVcQWu79pOAfLxR3FffnbswhiTb2ZzKGxy
         cSM2+pD8GtzK3jp+A5KdS0anEXGRY9mIbQedy0muB6J6W0xWScaOVkqekGpLoTdYmk+S
         DAHANz0c19Wg9BkuIdDKQ9Qt68OxEhirux1t5DhxN/T46xqKB585SXxS2nqTUyMT+0pe
         RknA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eDmkN+7wGSJU2DjKyEwaukLGa3ezBnxw3XEDIe2B94w=;
        b=tdDeX5FOVWyGQPFZadVjw+HZkslcwPceeu4RX29Y1l6ogLTKS7UFpSLAWSoMe4FfIU
         sASoIHK4PkQRbkHYekATfkuEoxHz7bXPrShDxgQk+cOCPyBE5VwhDthpL8CjgjLz/Z1t
         Ipjck9a9BCMIjUW6VCtvyeGXMaMquQRt8Ct+ntC6lhb9MB6jcUqj62PeH5vXLoyGTp6c
         LUayS9T30lQ4+N6i1e4Zax/3THvG0OMXWIl/hUsYvfzgstN6J1M2zO9EOn4MhW/dGHh/
         3CpMwKq0axHw6+HE3+C807Lap2WfZSjVc0R2sYj00w/d1epcVAxQu0tjNwieyUFhd/U0
         5VAg==
X-Gm-Message-State: APjAAAW3Es5xf2+LkBBTVXlllGxaEWzCHS+67+k6hzidR2P+eao6MpOw
        d/ZoIDSQNOrxHlr78CuH2I0=
X-Google-Smtp-Source: APXvYqwVMfR4xJj3S9xIKxx3G+lIUFED38PukW0psVvVtmYDW6GbmFRyB5/7ia0+IGS8w23MeaEbSw==
X-Received: by 2002:adf:c7c7:: with SMTP id y7mr13925638wrg.44.1565008164180;
        Mon, 05 Aug 2019 05:29:24 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id a2sm88177337wmj.9.2019.08.05.05.29.22
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2019 05:29:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, "Serge E. Hallyn" <serge@hallyn.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, Al Viro <viro@ftp.linux.org.uk>,
        werner@almesberger.net
Subject: Re: pivot_root(".", ".") and the fchdir() dance
To:     Aleksa Sarai <asarai@suse.de>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
Date:   Mon, 5 Aug 2019 14:29:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190805103630.tu4kytsbi5evfrhi@mikami>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Werner Almesberger, original author of both the system call 
and the manual page.]

Hello Aleksa,

Thank you for your responses. See below.

On 8/5/19 12:36 PM, Aleksa Sarai wrote:
> On 2019-08-01, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
>> I'd like to add some documentation about the pivot_root(".", ".")
>> idea, but I have a doubt/question. In the lxc_pivot_root() code we
>> have these steps
>>
>>         oldroot = open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>>         newroot = open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>>
>>         fchdir(newroot);
>>         pivot_root(".", ".");
>>
>>         fchdir(oldroot);      // ****
> 
> This one is "required" because (as the pivot_root(2) man page states),
> it's technically not guaranteed by the kernel that the process's cwd
> will be the same after pivot_root(2):
> 
>> pivot_root() may or may not change the current root and the current
>> working directory of any processes or threads which use the old root
>> directory.
>
> 
> Now, if it turns out that we can rely on the current behaviour (and the
> man page you're improving is actually inaccurate on this point) then
> you're right that this fchdir(2) isn't required.

I'm not sure that I follow your logic here. In the old manual page
text that you quote above, it says that [pivot_root() may change the
CWD of any processes that use the old root directory]. Two points 
there:

(1) the first fchdir() has *already* changed the CWD of the calling
process to the new root directory, and 

(2) the manual page implied but did not explicitly say that the
CWD of processes using the old root may be changed *to the new root
directory* (rather than changed to some arbitrary location!);
presumably, omitting to mention that detail explicitly in the manual
page was an oversight, since that is indeed the kernel's behavior.

The point is, the manual page was written 19 years ago and has
barely been changed since then. Even at the time that the system
call was officially released (in Linux 2.4.0), the manual page was
already inaccurate in a number of details, since it was written 
about a year beforehand (during the 2.3 series), and the 
implementation already changed by the time of 2.4.0, but the manual
page was not changed then (or since, but I'm working on that).

The behavior has in practice always been (modulo the introduction
of mount namespaces in 2001/2002):

       pivot_root()  changes  the root directory and the current
       working directory of each process or thread in  the  same
       mount namespace to new_root if they point to the old root
       directory.

Given that this has been the behavior since Linux 2.4.0 was
released, it improbable that this will ever change, since,
notwithstanding what the manual page says, this would be an ABI
breakage.

I hypothesize that the original manual page text, written before
the system call was even officially released, reflects Werner's
belief at the time that perhaps in the not too distant future
the implementation might change. But, 18 years on from 2.4.0,
it has not.

And arguably, the manual page should reflect that reality,
describing what the kernel actually does, rather than speculating
that things might (after 19 years) still sometime change.

>>         mount("", ".", "", MS_SLAVE | MS_REC, NULL);
>>         umount2(".", MNT_DETACH);
> 
>>         fchdir(newroot);      // ****
> 
> And this one is required because we are in @oldroot at this point, due
> to the first fchdir(2). If we don't have the first one, then switching
> from "." to "/" in the mount/umount2 calls should fix the issue.

See my notes above for why I therefore think that the second fchdir()
is also not needed (and therefore why switching from "." to "/" in the
mount()/umount2() calls is unnecessary.

Do you agree with my analysis?

> We do something very similar to this in runc as well[1] (though, as the
> commit message says, I "borrowed" the idea from LXC).
> 
> [1]: https://github.com/opencontainers/runc/commit/f8e6b5af5e120ab7599885bd13a932d970ccc748

Yep -- I saw your code as well, which in fact was what led me back
to the source of the idea in LXC (so, thanks for commenting the
origin of the idea).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
