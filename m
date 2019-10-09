Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A6852D1373
	for <lists+linux-man@lfdr.de>; Wed,  9 Oct 2019 18:01:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730708AbfJIQB5 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Wed, 9 Oct 2019 12:01:57 -0400
Received: from out02.mta.xmission.com ([166.70.13.232]:45978 "EHLO
        out02.mta.xmission.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730503AbfJIQB4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Oct 2019 12:01:56 -0400
Received: from in02.mta.xmission.com ([166.70.13.52])
        by out02.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1iIEPG-0007ZW-G7; Wed, 09 Oct 2019 10:01:42 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95] helo=x220.xmission.com)
        by in02.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1iIEPE-0005lW-Fl; Wed, 09 Oct 2019 10:01:42 -0600
From:   ebiederm@xmission.com (Eric W. Biederman)
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     Philipp Wendler <ml@philippwendler.de>,
        "Serge E. Hallyn" <serge@hallyn.com>,
        Christian Brauner <christian@brauner.io>,
        Aleksa Sarai <asarai@suse.de>,
        Reid Priedhorsky <reidpr@lanl.gov>,
        Andy Lutomirski <luto@amacapital.net>,
        Yang Bo <rslovers@yandex.com>, Jakub Wilk <jwilk@jwilk.net>,
        Joseph Sible <josephcsible@gmail.com>,
        Al Viro <viro@ftp.linux.org.uk>, werner@almesberger.net,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        =?utf-8?Q?St=C3=A9p?= =?utf-8?Q?hane?= Graber 
        <stgraber@ubuntu.com>
References: <620c691a-065e-b894-4f06-7453012bc8d3@gmail.com>
        <d449305b-f87c-f26e-e43f-d193fd8f4332@philippwendler.de>
        <e51e454c-b0e7-e5d1-7810-e8f023574aa2@gmail.com>
        <87y2xu71dh.fsf@x220.int.ebiederm.org>
        <c1e7f140-ca5b-2c8c-7b9d-54b61984cd3b@gmail.com>
Date:   Wed, 09 Oct 2019 11:00:53 -0500
In-Reply-To: <c1e7f140-ca5b-2c8c-7b9d-54b61984cd3b@gmail.com> (Michael
        Kerrisk's message of "Wed, 9 Oct 2019 12:22:49 +0200")
Message-ID: <87o8yp52oa.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-XM-SPF: eid=1iIEPE-0005lW-Fl;;;mid=<87o8yp52oa.fsf@x220.int.ebiederm.org>;;;hst=in02.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1+K3eG1pIsVXDw81mNeB4jzHrfZXVxKYic=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.3 required=8.0 tests=ALL_TRUSTED,BAYES_50,
        DCC_CHECK_NEGATIVE,TR_Symld_Words,T_TM2_M_HEADER_IN_MSG,
        T_XMDrugObfuBody_08,XM_B_Unicode autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  1.5 TR_Symld_Words too many words that have symbols inside
        *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
        *  0.0 XM_B_Unicode BODY: Testing for specific types of unicode
        * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
        *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
        *  1.0 T_XMDrugObfuBody_08 obfuscated drug references
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;"Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1560 ms - load_scoreonly_sql: 0.04 (0.0%),
        signal_user_changed: 8 (0.5%), b_tie_ro: 7 (0.5%), parse: 2.1 (0.1%),
        extract_message_metadata: 24 (1.5%), get_uri_detail_list: 14 (0.9%),
        tests_pri_-1000: 8 (0.5%), tests_pri_-950: 2.5 (0.2%), tests_pri_-900:
        1.70 (0.1%), tests_pri_-90: 107 (6.9%), check_bayes: 105 (6.7%),
        b_tokenize: 42 (2.7%), b_tok_get_all: 38 (2.4%), b_comp_prob: 10
        (0.6%), b_tok_touch_all: 9 (0.6%), b_finish: 2.1 (0.1%), tests_pri_0:
        1368 (87.7%), check_dkim_signature: 1.39 (0.1%), check_dkim_adsp: 3.0
        (0.2%), poll_dns_idle: 0.69 (0.0%), tests_pri_10: 2.4 (0.2%),
        tests_pri_500: 11 (0.7%), rewrite_mail: 0.00 (0.0%)
Subject: Re: For review: rewritten pivot_root(2) manual page
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> Hello Eric,
>
> Thank you. I was hoping you might jump in on this thread.
>
> Please see below.
>
> On 10/9/19 10:46 AM, Eric W. Biederman wrote:
>> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
>> 
>>> Hello Philipp,
>>>
>>> My apologies that it has taken a while to reply. (I had been hoping
>>> and waiting that a few more people might weigh in on this thread.)
>>>
>>> On 9/23/19 3:42 PM, Philipp Wendler wrote:
>>>> Hello Michael,
>>>>
>>>> Am 23.09.19 um 14:04 schrieb Michael Kerrisk (man-pages):
>>>>
>>>>> I'm considering to rewrite these pieces to exactly
>>>>> describe what the system call does (which I already
>>>>> do in the third paragraph) and remove the "may or may not"
>>>>> pieces in the second paragraph. I'd welcome comments
>>>>> on making that change.
>
> What did you think about my proposal above? To put it in context,
> this was my initial comment in the mail:
>
> [[
> One area of the page that I'm still not really happy with
> is the "vague" wording in the second paragraph and the note
> in the third paragraph about the system call possibly
> changing. These pieces survive (in somewhat modified form)
> from the original page, which was written before the
> system call was released, and it seems there was some
> question about whether the system call might still change
> its behavior with respect to the root directory and current
> working directory of other processes. However, after 19
> years, nothing has changed, and surely it will not in the
> future, since that would constitute an ABI breakage.
> I'm considering to rewrite these pieces to exactly
> describe what the system call does (which I already
> do in the third paragraph) and remove the "may or may not"
> pieces in the second paragraph. I'd welcome comments
> on making that change.
> ]]
>
> And the second and third paragraphs of the manual page currently
> read:
>
> [[
>        pivot_root()  may  or may not change the current root and the cur‐
>        rent working directory of any processes or threads  that  use  the
>        old  root  directory  and which are in the same mount namespace as
>        the caller of pivot_root().  The  caller  of  pivot_root()  should
>        ensure  that  processes  with root or current working directory at
>        the old root operate correctly in either case.   An  easy  way  to
>        ensure  this is to change their root and current working directory
>        to  new_root  before  invoking  pivot_root().   Note   also   that
>        pivot_root()  may  or may not affect the calling process's current
>        working directory.  It is therefore recommended to call chdir("/")
>        immediately after pivot_root().
>
>        The  paragraph  above  is  intentionally vague because at the time
>        when pivot_root() was first implemented, it  was  unclear  whether
>        its  affect  on  other process's root and current working directo‐
>        ries—and the caller's current working  directory—might  change  in
>        the  future.   However, the behavior has remained consistent since
>        this system call was first implemented: pivot_root()  changes  the
>        root  directory  and the current working directory of each process
>        or thread in the same mount namespace to new_root if they point to
>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>        pivot_root() does not change the caller's current  working  direc‐
>        tory  (unless it is on the old root directory), and thus it should
>        be followed by a chdir("/") call.
> ]]

Apologies I saw that concern I didn't realize it was a questio

I think it is very reasonable to remove warning the behavior might
change.  We have pivot_root(8) in common use that to use it requires
the semantic of changing processes other than the current process.
Which means any attempt to noticably change the behavior of
pivot_root(2) will break userspace.

Now the documented semantics in behavior above are not quite what
pivot_root(2) does.  It walks all processes on the system and if the
working directory or the root directory refer to the root mount that is
being replaced, then pivot_root(2) will update them.

In practice the above is limited to a mount namespace.  But something as
simple as "cd /proc/<somepid>/root" can allow a process to have a
working directory in a different mount namespace.

Because ``unprivileged'' users can now use pivot_root(2) we may want to
rethink the implementation at some point to be cheaper than a global
process walk.  So far that process walk has not been a problem in
practice.

If we had to write pivot_root(2) from scratch limiting it to just
changing the root directory of the process that calls pivot_root(2)
would have been the superior semantic.  That would have required run
pivot_root(8) like: "exec pivot_root . . -- /bin/bash ..."  but it would
not have required walking every thread in the system.

>>>> I think that it would make the man page significantly easier to
>>>> understand if if the vague wording and the meta discussion about it are
>>>> removed.
>>>
>>> It is my inclination to make this change, but I'd love to get more
>>> feedback on this point.
>>>
>>>>> DESCRIPTION
>>>> [...]>        pivot_root()  changes  the
>>>>>        root  directory  and the current working directory of each process
>>>>>        or thread in the same mount namespace to new_root if they point to
>>>>>        the  old  root  directory.   (See also NOTES.)  On the other hand,
>>>>>        pivot_root() does not change the caller's current  working  direc‐
>>>>>        tory  (unless it is on the old root directory), and thus it should
>>>>>        be followed by a chdir("/") call.
>>>>
>>>> There is a contradiction here with the NOTES (cf. below).
>>>
>>> See below.
>>>
>>>>>        The following restrictions apply:
>>>>>
>>>>>        -  new_root and put_old must be directories.
>>>>>
>>>>>        -  new_root and put_old must not be on the same filesystem as  the
>>>>>           current root.  In particular, new_root can't be "/" (but can be
>>>>>           a bind mounted directory on the current root filesystem).
>>>>
>>>> Wouldn't "must not be on the same mountpoint" or something similar be
>>>> more clear, at least for new_root? The note in parentheses indicates
>>>> that new_root can actually be on the same filesystem as the current
>>>> note. However, ...
>>>
>>> For 'put_old', it really is "filesystem".
>> 
>> If we are going to be pedantic "filesystem" is really the wrong concept
>> here.  The section about bind mount clarifies it, but I wonder if there
>> is a better term.
>
> Thanks. My aim was to try to distinguish "mount point" from
> "a mount somewhere inside the file system associated with a
> certain mount point"--in other words, I wanted to make it clear
> that 'put_old' (and 'new_root') could not be subdirectories
> under the current root mount point (which is correct, right?).
>
> Using "mount" does seem better. (My only concern is that some
> people may take it to mean "the mount point", but perhaps that
> just my own confusion.)

I am open to better terms.  But mount or vfsmount is what we are using
internal to the kernel and is really a distinct concept from filesystem.
And it is starting to leak out in system calls like move_mount.

>> I think I would say: "new_root and put_old must not be on the same mount
>> as the current root."
>
> I've made that change.
>
>> I think using "mount" instead of "filesystem" keeps the concepts less
>> confusing.
>> 
>> As I am reading through this email and seeing text that is trying to be
>> precise and clear then hitting the term "filesystem" is a bit jarring.
>> pivot_root doesn't care a thing for file systems.  pivot_root only cares
>> about mounts.
>> 
>> And by a "mount" I mean the thing that you get when you create a bind
>> mount or you call mount normally.
>
> Thanks for the above comments.
>
> Hmm, doI need to make similar changes in the initial paragraph of
> the manual page as well? It currently reads:
>
>        pivot_root() changes the root filesystem in the mount namespace of
>        the calling process.  More precisely, it moves the root filesystem
>        to  the directory put_old and makes new_root the new root filesys‐
>        tem.  The calling process must have the  CAP_SYS_ADMIN  capability
>        in the user namespace that owns the caller's mount namespace.
>
> Furthermore the one line NAME of the man page reads:
>
>        pivot_root - change the root filesystem
>
> Is a change needed there also?

Yes please.  Both locations.

>> Michael do you have man pages for the new mount api yet?
>
> David Howells wrote pages in mid-2018, well before the syscalls got
> merged in the kernel (in mid-2019). I did not merge them because
> the code was not yet in the kernel, and lacking time, I never chased
> David when the syscalls did get merged to see if the pages were still
> up to date. I pinged David just now.

Good.  I was thinking of them because the concept of "mount" matters more
there.


>>>
>>>>>        -  put_old must be at or underneath new_root; that  is,  adding  a
>>>>>           nonnegative  number  of /.. to the string pointed to by put_old
>>>>>           must yield the same directory as new_root.
>>>>>
>>>>>        -  new_root must be a mount point.  (If  it  is  not  otherwise  a
>>>>>           mount  point,  it  suffices  to  bind  mount new_root on top of
>>>>>           itself.)
>>>>
>>>> ... this item actually makes the above item almost redundant regarding
>>>> new_root (except for the "/") case. So one could replace this item with
>>>> something like this:
>>>>
>>>> - new_root must be a mount point different from "/". (If it is not
>>>>   otherwise a mount point, it suffices  to bind mount new_root on top
>>>>   of itself.)
>>>>
>>>> The above item would then only mention put_old (and maybe use clarified
>>>> wording on whether actually a different file system is necessary for
>>>> put_old or whether a different mount point is enough).
>>>
>>> Thanks. That's a good suggestion. I simplified the earlier bullet
>>> point as you suggested, and changed the text here to say:
>>>
>>>        -  new_root must be a mount point, but can't be "/".  If it is not
>>>           otherwise  a mount point, it suffices to bind mount new_root on
>>>           top of itself.  (new_root can be a bind  mounted  directory  on
>>>           the current root filesystem.)
>> 
>> How about:
>>           - new_root must be the path to a mount, but can't be "/".  Any
>
> Surely here it must be "mount point" not "mount"? (See my discussion
> above.)

Sigh.  I have had my head in the code to long, where new_root is
used to refer to the mount that is mounted on that mount point as well.


>
>>           path that is not already a mount can be converted into one by
>>           bind mounting the path onto itself.
>>>>> NOTES
>>>> [...]
>>>>>        pivot_root() allows the caller to switch to a new root  filesystem
>>>>>        while  at  the  same time placing the old root mount at a location
>>>>>        under new_root from where it can subsequently be unmounted.   (The
>>>>>        fact  that  it  moves  all processes that have a root directory or
>>>>>        current working directory on the old root filesystem  to  the  new
>>>>>        root  filesystem  frees the old root filesystem of users, allowing
>>>>>        it to be unmounted more easily.)
>>>>
>>>> Here is the contradiction:
>>>> The DESCRIPTION says that root and current working dir are only changed
>>>> "if they point to the old root directory". Here in the NOTES it says
>>>> that any root or working directories on the old root file system (i.e.,
>>>> even if somewhere below the root) are changed.
>>>>
>>>> Which is correct?
>>>
>>> The first text is correct. I must have accidentally inserted
>>> "filesystem" into the paragraph just here during a global edit.
>>> Thanks for catching that.
>>>
>>>> If it indeed affects all processes with root and/or current working
>>>> directory below the old root, the text here does not clearly state what
>>>> the new root/current working directory of theses processes is.
>>>> E.g., if a process is at /foo and we pivot to /bar, will the process be
>>>> moved to /bar (i.e., at / after pivot_root), or will the kernel attempt
>>>> to move it to some location like /bar/foo? Because the latter might not
>>>> even exist, I suspect that everything is just moved to new_root, but
>>>> this could be stated explicitly by replacing "to the new root
>>>> filesystem" in the above paragraph with "to the new root directory"
>>>> (after checking whether this is true).
>>>
>>> The text here now reads:
>>>
>>>        pivot_root() allows the caller to switch to a new root  filesystem
>>>        while  at  the  same time placing the old root mount at a location
>>>        under new_root from where it can subsequently be unmounted.   (The
>>>        fact  that  it  moves  all processes that have a root directory or
>>>        current working directory on the old root  directory  to  the  new
>>>        root  frees the old root directory of users, allowing the old root
>>>        filesystem to be unmounted more easily.)
>> 
>> 
>> Please "mount" instead of "filesystem".
>
> Changed.
>
>
>>>>> EXAMPLE>        The program below demonstrates the use of  pivot_root()  inside  a
>>>>>        mount namespace that is created using clone(2).  After pivoting to
>>>>>        the root directory named in the program's first command-line argu‐
>>>>>        ment,  the  child  created  by  clone(2) then executes the program
>>>>>        named in the remaining command-line arguments.
>>>>
>>>> Why not use the pivot_root(".", ".") in the example program?
>>>> It would make the example shorter, and also works if the process cannot
>>>> write to new_root (e..g., in a user namespace).
>>>
>>> I'm not sure. Some people have a bit of trouble to wrap their head
>>> around the pivot_root(".", ".") idea. (I possibly am one of them.)
>>> I'd be quite keen to hear other opinions on this. Unfortunately,
>>> few people have commented on this manual page rewrite.
>> 
>> I am happy as long as it is pivot_root(".", ".") is documented
>> somewhere.  There is real code that uses it so it is not going away.
>> Plus pivot_root(".", ".") is really what is desired in a lot of
>> situations where the caller of pivot_root is an intermediary and
>> does not control the new root filesystem.  At which point the only
>> path you can be guaranteed to exit on the new root filesystem is "/".
>
> Good. There is documentation of pivot_root(".", ".") i the page!

Yeah!

Eric
