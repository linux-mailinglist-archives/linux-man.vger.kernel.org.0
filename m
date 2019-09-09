Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DF9EAE187
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2019 01:40:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730779AbfIIXkz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Sep 2019 19:40:55 -0400
Received: from out01.mta.xmission.com ([166.70.13.231]:34366 "EHLO
        out01.mta.xmission.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729483AbfIIXkz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Sep 2019 19:40:55 -0400
Received: from in01.mta.xmission.com ([166.70.13.51])
        by out01.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1i7THA-0006j5-CC; Mon, 09 Sep 2019 17:40:52 -0600
Received: from 110.8.30.213.rev.vodafone.pt ([213.30.8.110] helo=x220.xmission.com)
        by in01.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1i7TH7-0007xy-P4; Mon, 09 Sep 2019 17:40:52 -0600
From:   ebiederm@xmission.com (Eric W. Biederman)
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     Philipp Wendler <ml@philippwendler.de>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, werner@almesberger.net,
        Al Viro <viro@ftp.linux.org.uk>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
        <20190805103630.tu4kytsbi5evfrhi@mikami>
        <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
        <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de>
        <CAKgNAkjS+x7aMVUiVSgCRwgi8rnukqJv=svtTARE-tt-oxQxWw@mail.gmail.com>
        <87r24piwhm.fsf@x220.int.ebiederm.org>
        <CAKgNAkhK2qBbz5aVY9VdK0UzvpZ=c7c7LWQ1MK2gu-rVKUz9_g@mail.gmail.com>
Date:   Mon, 09 Sep 2019 18:40:29 -0500
In-Reply-To: <CAKgNAkhK2qBbz5aVY9VdK0UzvpZ=c7c7LWQ1MK2gu-rVKUz9_g@mail.gmail.com>
        (Michael Kerrisk's message of "Mon, 9 Sep 2019 16:48:01 +0200")
Message-ID: <87ftl5donm.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-SPF: eid=1i7TH7-0007xy-P4;;;mid=<87ftl5donm.fsf@x220.int.ebiederm.org>;;;hst=in01.mta.xmission.com;;;ip=213.30.8.110;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX19C8a+fyJKpkMOSs2F/Y2I2o2EtRmXhpeo=
X-SA-Exim-Connect-IP: 213.30.8.110
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
        DCC_CHECK_NEGATIVE,TVD_RCVD_IP,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
        T_TooManySym_02 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4742]
        *  0.0 TVD_RCVD_IP Message was received from an IP address
        *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
        * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
        *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
        *  0.0 T_TooManySym_02 5+ unique symbols in subject
        *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;"Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 2084 ms - load_scoreonly_sql: 0.05 (0.0%),
        signal_user_changed: 2.9 (0.1%), b_tie_ro: 2.0 (0.1%), parse: 0.96
        (0.0%), extract_message_metadata: 17 (0.8%), get_uri_detail_list: 3.4
        (0.2%), tests_pri_-1000: 14 (0.7%), tests_pri_-950: 1.37 (0.1%),
        tests_pri_-900: 1.15 (0.1%), tests_pri_-90: 33 (1.6%), check_bayes: 31
        (1.5%), b_tokenize: 12 (0.6%), b_tok_get_all: 10 (0.5%), b_comp_prob:
        3.5 (0.2%), b_tok_touch_all: 2.7 (0.1%), b_finish: 0.66 (0.0%),
        tests_pri_0: 508 (24.4%), check_dkim_signature: 0.60 (0.0%),
        check_dkim_adsp: 2.2 (0.1%), poll_dns_idle: 1485 (71.3%),
        tests_pri_10: 2.2 (0.1%), tests_pri_500: 1501 (72.0%), rewrite_mail:
        0.00 (0.0%)
Subject: Re: pivot_root(".", ".") and the fchdir() dance
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> Hello Eric,
>
> Thanks for chiming in; I should have thought to CC you at the start. I
> have a question or two, below.
>
> On Mon, 9 Sep 2019 at 12:40, Eric W. Biederman <ebiederm@xmission.com> wrote:
>>
>> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>>
>> > Hello Philipp,
>> >
>> > On Tue, 6 Aug 2019 at 10:12, Philipp Wendler <ml@philippwendler.de> wrote:
>> >>
>> >> Hello Michael, hello Aleksa,
>> >>
>> >> Am 05.08.19 um 14:29 schrieb Michael Kerrisk (man-pages):
>> >>
>> >> > On 8/5/19 12:36 PM, Aleksa Sarai wrote:
>> >> >> On 2019-08-01, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
>> >> >>> I'd like to add some documentation about the pivot_root(".", ".")
>> >> >>> idea, but I have a doubt/question. In the lxc_pivot_root() code we
>> >> >>> have these steps
>> >> >>>
>> >> >>>         oldroot = open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>> >> >>>         newroot = open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
>> >> >>>
>> >> >>>         fchdir(newroot);
>> >> >>>         pivot_root(".", ".");
>> >> >>>
>> >> >>>         fchdir(oldroot);      // ****
>> >> >>>
>> >> >>>         mount("", ".", "", MS_SLAVE | MS_REC, NULL);
>> >> >>>         umount2(".", MNT_DETACH);
>> >> >>
>> >> >>>         fchdir(newroot);      // ****
>> >> >>
>> >> >> And this one is required because we are in @oldroot at this point, due
>> >> >> to the first fchdir(2). If we don't have the first one, then switching
>> >> >> from "." to "/" in the mount/umount2 calls should fix the issue.
>> >> >
>> >> > See my notes above for why I therefore think that the second fchdir()
>> >> > is also not needed (and therefore why switching from "." to "/" in the
>> >> > mount()/umount2() calls is unnecessary.
>> >> >
>> >> > Do you agree with my analysis?
>> >>
>> >> If both the second and third fchdir are not required,
>> >> then we do not need to bother with file descriptors at all, right?
>> >
>> > Exactly.
>> >
>> >> Indeed, my tests show that the following seems to work fine:
>> >>
>> >> chdir(rootfs)
>> >> pivot_root(".", ".")
>> >> umount2(".", MNT_DETACH)
>> >
>> > Thanks for the confirmation, That's also exactly what I tested.
>> >
>> >> I tested that with my own tool[1] that uses user namespaces and marks
>> >> everything MS_PRIVATE before, so I do not need the mount(MS_SLAVE) here.
>> >>
>> >> And it works the same with both umount2("/") and umount2(".").
>> >
>> > Yes.
>> >
>> >> Did I overlook something that makes the file descriptors required?
>> >
>> > No.
>> >
>> >> If not, wouldn't the above snippet make sense as example in the man page?
>> >
>> > I have exactly that snippet in a pending change for the manual page :-).
>>
>> I have just spotted this conversation and I expect if you are going
>> to use this example it is probably good to document what is going
>> on so that people can follow along.
>
> (Sounds reasonable.)
>
>> >> chdir(rootfs)
>> >> pivot_root(".", ".")
>>
>> At this point the mount stack should be:
>> old_root
>> new_root
>> rootfs
>
> In this context, what is 'rootfs'? The initramfs? At least, when I
> examine /proc/PID/mountinfo. When I look at the / mount point in
> /proc/PID/mountinfo, I see just
>
>    old_root
>    new_root
>
> But nothing below 'new_root'. So, I'm a little puzzled.

I think that is because Al changed /proc/mounts to not display mounts
that are outside of your current root.  But yes there is typically
the initramfs of file system type rootfs on their.  Even when it isn't
used you have one.  Just to keep everything simple I presume.

I haven't double checked lately to be certain it is there but I expect
it is.

> By the way, why is 'old_root' stacked above 'new_root', do you know? I
> mean, in this scenario it turns out to be useful, but it's kind of the
> opposite from what I would have expected. (And if this was a
> deliverate design decision in pivot_root(), it was never made
> explicit.)

Oh.  It is absolutely explicit and part of the design and it has nothing
to do with this case.

The pivot_root system calls takes two parameters:  new_root and put_old.

In this case the old root is put on put_old (which is the new_root).
And new_root is made the current root.

The pivot_root code looks everything up before it moves anything.   With
the result it is totally immaterrial which order the moves actually
happen in the code.  Further it is pretty much necessary to look
everything up before things are moved because the definition of paths
change.

So it would actually be difficult to have pivot_root(.,.) to do anything
except what it does today.


>> With "." and "/" pointing to new_root.
>>
>> >> umount2(".", MNT_DETACH)
>>
>> At this point resolving "." starts with new_root and follows up the
>> mount stack to old-root.
>
> Okay.
>
>> Ordinarily if you unmount "/" as is happening above you then need to
>> call chroot and possibly chdir to ensure neither "/" nor "." point to
>> somewhere other than the unmounted root filesystem.  In this specific
>> case because "/" and "." resolve to new_root under the filesystem that is
>> being unmounted that all is well.
>
> s/that/then/ ?

Yes.

Eric

