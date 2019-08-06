Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C3E85839B9
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2019 21:35:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725970AbfHFTfn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Aug 2019 15:35:43 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38491 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725798AbfHFTfm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Aug 2019 15:35:42 -0400
Received: by mail-wr1-f66.google.com with SMTP id g17so89012337wrr.5;
        Tue, 06 Aug 2019 12:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tpg0af9/U2JURUKymJ1WeymBF/I9PdpGOpltEYj/iLU=;
        b=K1zoApo+80Lle4P4NxbR/2kRWHO+Ps3k6oiTDLtbeRoCiCi735wIF3+DfzvrtWqfFm
         u7V7ROR8+rMEaR/1l4H2Mo1nKBHuzMKJkwnJFKtJ27h/SfUtkwPz72AOQyxYSsXtLG9x
         fYJcz5393bUnPzxFyy5Y9DBLJ/u+p0osPUWrxcUyQYLUvzx1n6oY2OLLq51fGNMZZ8B5
         79kEUhdr6fNvT9luL9NEI3Yxmc1BBJGLLLBQIsyg6evtJYsoDlGbFmoLbMgux6X0eD29
         J8xNGRveN+O6hiRTvb4P0N9EcQajpWIvOgdpFesul9/2i90OafCohntyJtY+rUQgf4+O
         Rv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tpg0af9/U2JURUKymJ1WeymBF/I9PdpGOpltEYj/iLU=;
        b=JzZhKiExtFP72Dqldr3xpLEipe7WGWCB9nlXUAEp5JSD4ayQKO3Gk99MSv/USDSA7k
         ixHdF5+1qAe7FoMeMguN+TQhZ7QNKweLzZPdjvvbZDwv/1Z4faTU9Xj18YEfevn6dxf/
         xQNv/lifsxfLmvd2DtTixx+vJFwXfluseP6ohoI/aI5cohjxM4+6hgLVy80ipXO1ftfE
         +cXGwE0jR6zWp4Z2irS2ApDV91CDXFZ2UwTVgE262GbEnhb8RYgKpaMhZzoZS09fJGAs
         w8WavCLUBKABZbUReP6p+fPRzzH/RhcD2SQD7dLJ6Yz7GsNujO3GbrOHnBMiFilgpspO
         GnEQ==
X-Gm-Message-State: APjAAAUPWRuJ9IuS+tzXfzO8Ms9/0qPH8owi1Jw+xbFCdwZh0LYrwcuX
        tb8n1i0g3vIFgQzKSYY4ACk=
X-Google-Smtp-Source: APXvYqwQFpOz41LCT+YyQ37GpgIUrF6vthgmDiflTR9yjvYYf0d/UqaMIx0HX8fc9cvSZfMFAAYXAw==
X-Received: by 2002:adf:df10:: with SMTP id y16mr6275738wrl.302.1565120139380;
        Tue, 06 Aug 2019 12:35:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:3aff:2d01:3e8:cefd:7d80:b611? ([2001:a61:3aff:2d01:3e8:cefd:7d80:b611])
        by smtp.gmail.com with ESMTPSA id z5sm63786972wmf.48.2019.08.06.12.35.38
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 12:35:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, "Serge E. Hallyn" <serge@hallyn.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, Al Viro <viro@ftp.linux.org.uk>,
        werner@almesberger.net, Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
To:     Aleksa Sarai <asarai@suse.de>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami>
 <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
 <20190805133744.7sm6wx2rspwiuxu5@mikami>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <855fe920-7630-b16c-343b-b08b93eceffa@gmail.com>
Date:   Tue, 6 Aug 2019 21:35:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190805133744.7sm6wx2rspwiuxu5@mikami>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Aleksa,

On 8/5/19 3:37 PM, Aleksa Sarai wrote:
> On 2019-08-05, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
>> On 8/5/19 12:36 PM, Aleksa Sarai wrote:
>>> On 2019-08-01, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
>>>> I'd like to add some documentation about the pivot_root(".", ".")
>>>> idea, but I have a doubt/question. In the lxc_pivot_root() code we
>>>> have these steps
>>>>
>>>>         oldroot = open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>>>>         newroot = open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>>>>
>>>>         fchdir(newroot);
>>>>         pivot_root(".", ".");
>>>>
>>>>         fchdir(oldroot);      // ****
>>>
>>> This one is "required" because (as the pivot_root(2) man page states),
>>> it's technically not guaranteed by the kernel that the process's cwd
>>> will be the same after pivot_root(2):
>>>
>>>> pivot_root() may or may not change the current root and the current
>>>> working directory of any processes or threads which use the old root
>>>> directory.
>>>
>>> Now, if it turns out that we can rely on the current behaviour (and the
>>> man page you're improving is actually inaccurate on this point) then
>>> you're right that this fchdir(2) isn't required.
>>
>> I'm not sure that I follow your logic here. In the old manual page
>> text that you quote above, it says that [pivot_root() may change the
>> CWD of any processes that use the old root directory]. Two points 
>> there:
>>
>> (1) the first fchdir() has *already* changed the CWD of the calling
>> process to the new root directory, and
> 
> Right, I (and presumably the LXC folks as well) must've missed the
> qualifier on the end of the sentence and was thinking that it said "you
> can't trust CWD after pivot_root(2)".
> 
> My follow-up was going to be that we need to be in the old root to
> umount, but as you mentioned that shouldn't be necessary either since
> the umount will apply to the stacked mount (which is somewhat
> counter-intuitively the earlier mount not the later one -- I will freely
> admit that I don't understand all of the stacked and tucked mount
> logic in VFS).

Your not alone. I don't follow that code easily either. But, looking
at the order that the mounts were stacked in /proc/PID/mountinfo
helped clarify things for me.

>> (2) the manual page implied but did not explicitly say that the
>> CWD of processes using the old root may be changed *to the new root
>> directory* (rather than changed to some arbitrary location!);
>> presumably, omitting to mention that detail explicitly in the manual
>> page was an oversight, since that is indeed the kernel's behavior.
>>
>> The point is, the manual page was written 19 years ago and has
>> barely been changed since then. Even at the time that the system
>> call was officially released (in Linux 2.4.0), the manual page was
>> already inaccurate in a number of details, since it was written 
>> about a year beforehand (during the 2.3 series), and the 
>> implementation already changed by the time of 2.4.0, but the manual
>> page was not changed then (or since, but I'm working on that).
>>
>> The behavior has in practice always been (modulo the introduction
>> of mount namespaces in 2001/2002):
>>
>>        pivot_root()  changes  the root directory and the current
>>        working directory of each process or thread in  the  same
>>        mount namespace to new_root if they point to the old root
>>        directory.
>>
>> Given that this has been the behavior since Linux 2.4.0 was
>> released, it improbable that this will ever change, since,
>> notwithstanding what the manual page says, this would be an ABI
>> breakage.
>>
>> I hypothesize that the original manual page text, written before
>> the system call was even officially released, reflects Werner's
>> belief at the time that perhaps in the not too distant future
>> the implementation might change. But, 18 years on from 2.4.0,
>> it has not.
>>
>> And arguably, the manual page should reflect that reality,
>> describing what the kernel actually does, rather than speculating
>> that things might (after 19 years) still sometime change.
> 
> I wasn't aware of the history of the man page, and took it as gospel
> that we should avoid making assumptions about current's CWD surrounding
> a pivot_root(2). Given the history (and that it appears the behaviour
> was never intended to be changed after being merged), we should
> definitely drop that text to avoid the confusion which has already
> caused us container folks to implement this in a
> more-convoluted-than-necessary fashion.
> 
> In case you haven't noticed already, you might want to also send a patch
> to util-linux to also update pivot_root(8) which makes the same mistake
> in its text:
> 
>> Note that, depending on the implementation of pivot_root, root and cwd
>> of the caller may or may not change.
>
> Then again, it's also possible this text is independently just as vague
> for other reasons.

I think that page was also written by Werner, back in the day. So I
think it's vague for the same reasons.
 
>>> And this one is required because we are in @oldroot at this point, due
>>> to the first fchdir(2). If we don't have the first one, then switching
>>> from "." to "/" in the mount/umount2 calls should fix the issue.
>>
>> See my notes above for why I therefore think that the second fchdir()
>> is also not needed (and therefore why switching from "." to "/" in the
>> mount()/umount2() calls is unnecessary.
> 
> My gut feeling reading this was that operating on "." will result in you
> doing the later mount operations on @newroot (since "." is @newroot) not
> on the stacked mount which isn't your CWD.
> 
> *But* my gut feeling is obviously wrong (since you've tested it), and I
> will again admit I don't understand quite how CWD references interact
> with mount operations -- especially in the context of stacked mounts.
> 
>> Do you agree with my analysis?
> 
> Minus the mount bits that I'm not too sure about (I defer to
> Christian/Serge/et al on that point), it seems reasonable to me.

Okay.

> My only real argument for keeping it the way it is, is that it's much
> easier (for me, at least) to understand the semantics with explicit
> fchdir(2)s. But that's not really a good reason to continue doing it the
> way we do it now -- if it's documented in ah man page that'd be more than
> sufficient to avoid confusion when reading snippets that do it without
> the fchdir(2)s.

Yes. I'm wanting to get a some feedback/confirmation from others
before I finalize the changes ti the manual page. The feedback from
you and Philipp has already been helpful. I'm hoping that Serge or
Andy might also chip in.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
