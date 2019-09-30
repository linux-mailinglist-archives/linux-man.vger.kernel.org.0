Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 171E7C2012
	for <lists+linux-man@lfdr.de>; Mon, 30 Sep 2019 13:43:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727025AbfI3LnJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Sep 2019 07:43:09 -0400
Received: from out01.mta.xmission.com ([166.70.13.231]:42078 "EHLO
        out01.mta.xmission.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726504AbfI3LnJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Sep 2019 07:43:09 -0400
Received: from in01.mta.xmission.com ([166.70.13.51])
        by out01.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1iEu53-00058W-U2; Mon, 30 Sep 2019 05:43:05 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95] helo=x220.xmission.com)
        by in01.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1iEu52-00068R-Q2; Mon, 30 Sep 2019 05:43:05 -0600
From:   ebiederm@xmission.com (Eric W. Biederman)
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     Christian Brauner <christian.brauner@ubuntu.com>,
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
        <87ftl5donm.fsf@x220.int.ebiederm.org>
        <b8b9d8bd-e959-633f-b879-4bfe4eb0df23@gmail.com>
        <20190910111551.scam5payogqqvlri@wittgenstein>
        <30545c5c-ff4c-8b87-e591-40cc0a631304@gmail.com>
        <871rwnda47.fsf@x220.int.ebiederm.org>
        <448138b8-0d0c-5eb3-d5e5-04a26912d3a8@gmail.com>
        <87ef0hbezt.fsf@x220.int.ebiederm.org>
        <cc21557f-1568-68c3-e322-47ceb52fdf53@gmail.com>
        <71cad40b-0f9f-24de-b650-8bc4fce78fa8@gmail.com>
Date:   Mon, 30 Sep 2019 06:42:30 -0500
In-Reply-To: <71cad40b-0f9f-24de-b650-8bc4fce78fa8@gmail.com> (Michael
        Kerrisk's message of "Sat, 28 Sep 2019 17:05:29 +0200")
Message-ID: <87y2y6j9i1.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-XM-SPF: eid=1iEu52-00068R-Q2;;;mid=<87y2y6j9i1.fsf@x220.int.ebiederm.org>;;;hst=in01.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1/QwiM4Rmym0/1brxXCDOQ66F6XbJCpApM=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=8.0 tests=ALL_TRUSTED,BAYES_50,
        DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
        T_TooManySym_02,T_XMDrugObfuBody_08 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4989]
        *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
        * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
        *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
        *  0.0 T_TooManySym_01 4+ unique symbols in subject
        *  0.0 T_TooManySym_02 5+ unique symbols in subject
        *  1.0 T_XMDrugObfuBody_08 obfuscated drug references
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;"Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 574 ms - load_scoreonly_sql: 0.05 (0.0%),
        signal_user_changed: 2.9 (0.5%), b_tie_ro: 2.0 (0.4%), parse: 1.09
        (0.2%), extract_message_metadata: 4.4 (0.8%), get_uri_detail_list: 2.1
        (0.4%), tests_pri_-1000: 4.3 (0.8%), tests_pri_-950: 1.35 (0.2%),
        tests_pri_-900: 1.22 (0.2%), tests_pri_-90: 25 (4.4%), check_bayes: 24
        (4.2%), b_tokenize: 9 (1.6%), b_tok_get_all: 8 (1.4%), b_comp_prob:
        2.6 (0.5%), b_tok_touch_all: 2.5 (0.4%), b_finish: 0.67 (0.1%),
        tests_pri_0: 514 (89.6%), check_dkim_signature: 0.73 (0.1%),
        check_dkim_adsp: 2.3 (0.4%), poll_dns_idle: 0.48 (0.1%), tests_pri_10:
        2.2 (0.4%), tests_pri_500: 8 (1.4%), rewrite_mail: 0.00 (0.0%)
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
> A ping on my question below. Could you take a look please?
>
> Thanks,
>
> Michael
>
>>>>> The concern from our conversation at the container mini-summit was that
>>>>> there is a pathology if in your initial mount namespace all of the
>>>>> mounts are marked MS_SHARED like systemd does (and is almost necessary
>>>>> if you are going to use mount propagation), that if new_root itself
>>>>> is MS_SHARED then unmounting the old_root could propagate.
>>>>>
>>>>> So I believe the desired sequence is:
>>>>>
>>>>>>>>            chdir(new_root);
>>>>> +++            mount("", ".", MS_SLAVE | MS_REC, NULL);
>>>>>>>>            pivot_root(".", ".");
>>>>>>>>            umount2(".", MNT_DETACH);
>>>>>
>>>>> The change to new new_root could be either MS_SLAVE or MS_PRIVATE.  So
>>>>> long as it is not MS_SHARED the mount won't propagate back to the
>>>>> parent mount namespace.
>>>>
>>>> Thanks. I made that change.
>>>
>>> For what it is worth.  The sequence above without the change in mount
>>> attributes will fail if it is necessary to change the mount attributes
>>> as "." is both put_old as well as new_root.
>>>
>>> When I initially suggested the change I saw "." was new_root and forgot
>>> "." was also put_old.  So I thought there was a silent danger without
>>> that sequence.
>> 
>> So, now I am a little confused by the comments you added here. Do you
>> now mean that the 
>> 
>> mount("", ".", MS_SLAVE | MS_REC, NULL);
>> 
>> call is not actually necessary?

Apologies for being slow getting back to you.

To my knowledge there are two cases where pivot_root is used.
- In the initial mount namespace from a ramdisk when mounting root.
  This is the original use case and somewhat historical as rootfs
  (aka an initial ramfs) may not be unmounted.

- When setting up a new mount namespace to jettison all of the mounts
  you don't need.

The sequence:

	chdir(new_root);
        pivot_root(".", ".");
        umount2(".", MNT_DETACH);

is perfect for both use cases (as nothing needs to be known about the
directory layout of the new root filesystem).

In the case when you are setting up a new mount namespace propogating
changes in the mount layout to another mount namespace is fatal.  But
that is not a concern for using that pivot_root sequence above because
pivot_root will fail deterministically if
'mount("", ".", MS_SLAVE | MS_REC, NULL)' is needed but not specified.

So I would document the above sequence of three system calls in the
man-page.

I would document that pivot_root will fail if propagation would occur.

I would document in pivot_root or under unshare(CLONE_NEWNS) that if
mount propagation is enabled (the default with systemd) that you
need to call 'mount("", "/", MS_SLAVE | MS_REC, NULL);' or
'mount("", "/", MS_PRIVATE | MS_REC, NULL);' after creating a mount
namespace.  Or mounts will propagate backwards, which is usually
not what people want.

Creating of a mount namespace in a user namespace automatically does
'mount("", "/", MS_SLAVE | MS_REC, NULL);' if the starting mount
namespace was not created in that user namespace.  AKA creating
a mount namespace in a user namespace does the unshare for you.

Eric
