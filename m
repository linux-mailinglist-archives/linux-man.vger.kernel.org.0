Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B1084D8B44
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 19:03:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238787AbiCNSEP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 14:04:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242511AbiCNSEM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 14:04:12 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2291422BDE
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 11:03:01 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id x15so25248753wru.13
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 11:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=x4PoJa25yA6cvJ7x3rtX0XTEw89I0DuBun472TgC/IY=;
        b=KlR/Lk4V3+oqB563MB5j+VpE4FoivgoBQWlPlR2YR0Xq20Mo88kks1Vp9IwxY1nEPf
         ERcp3n76dC0yBkZ2twZNB+l5Vz7bIqOrmMY65WmgXEJ5W/EtXk960LfurfWWuPYh4c0r
         mts+TktaSWXvX2XkrdK65udHW8/GuNfacDF9zbPk1POTxQDpj8bUXdqvDcovM3MZjFg8
         w7DFBgdeOScCKUkZo7T3gZuZIm+ab++vG9ioSXTFyMKILPbKLnFXkc0qP9A1uCrkX0R3
         8yZcpYuxL99LAo9bqzDwFyzyrLeA3i/zieuLTUDjP4Upq0S3JjobWZaiDnSUw0spn59r
         0aIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to;
        bh=x4PoJa25yA6cvJ7x3rtX0XTEw89I0DuBun472TgC/IY=;
        b=AWjU8LoN7Qn3YhnZhi+Gk3ED3bXP/VusrqlYrd5dH3Ku2llHPqZp/wy8zFSxv0uagS
         IgNq8k1I0O+MsPZe+p1HoV+HFZiKSpB618VB9jpjnsIxstn6gZ8eYxDNDixHGOmfgSVA
         j35qEW1cNTDE7RDqIlLojH84JQ6FV5jna+LckU2JnrS5y8FU2qqi9IUPRFe4IeASFbzv
         mEoaMUPUb/mHxveACDs1XNPmsIxQp8ZT2TdbWBunzaB4qBOTTo5HqcINJ2qUhICRgCzT
         r1NORK2udeAVjOZ/PKqA2fecbydY+svQlk8G2rYmWaAOxH4BaHOIIFW1tEo6XmOORSHP
         L1Wg==
X-Gm-Message-State: AOAM532Zfp7cz5X1P0Lh+FulSx9NfpXfs3HrFA13HaTVmYj2uWZCkcdV
        AEbKcthZLHqKrlBnkSG2zRo=
X-Google-Smtp-Source: ABdhPJy+ZWy610150AF2GDZAc1hrwOFHszpTwZnf6XtTa6MBjMq+MA6rECnPoiHQp7Ta4ZnT9smh9w==
X-Received: by 2002:adf:fecf:0:b0:1f0:62e0:bcd8 with SMTP id q15-20020adffecf000000b001f062e0bcd8mr17730542wrs.61.1647280979503;
        Mon, 14 Mar 2022 11:02:59 -0700 (PDT)
Received: from [192.168.1.9] (95-44-90-175-dynamic.agg2.lod.rsl-rtd.eircom.net. [95.44.90.175])
        by smtp.googlemail.com with ESMTPSA id 9-20020a05600c268900b00381394d74a1sm201251wmt.9.2022.03.14.11.02.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 11:02:58 -0700 (PDT)
Sender: =?UTF-8?Q?P=C3=A1draig_Brady?= <pixelbeat@gmail.com>
Content-Type: multipart/mixed; boundary="------------6a03pnqnPZoUdtQyfDpDjTL3"
Message-ID: <4a4ad936-bb1c-328c-dd43-95f4abbb905c@draigBrady.com>
Date:   Mon, 14 Mar 2022 18:02:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:97.0) Gecko/20100101
 Thunderbird/97.0
Subject: Re: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
Content-Language: en-US
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Andreas Schwab <schwab@linux-m68k.org>,
        Paul Eggert <eggert@cs.ucla.edu>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     Gnulib bugs <bug-gnulib@gnu.org>, Coreutils <coreutils@gnu.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Colin Walters <walters@redhat.com>,
        Ondrej Holy <oholy@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Neil Brown <neilb@suse.com>
References: <ed3ac15c-9e92-73b7-b7f9-8281488e8778@draigBrady.com>
 <3a4c9f63-0203-a810-6113-5c77a16e3690@cs.ucla.edu>
 <95140173-2913-e377-5824-8a569ac78b5b@draigBrady.com>
 <5c608ef7-f279-6afc-37f5-6a50442a3143@cs.ucla.edu>
 <bdd68a31-ef3a-f022-bc72-c051690cee59@draigBrady.com>
 <6645f678-4293-4692-8472-eee0bacee63f@cs.ucla.edu>
 <670898ee-3b1c-97cd-290c-b6d91bfdaa07@draigBrady.com>
 <5612cf59-a6da-6974-6a97-e406a4f4d557@cs.ucla.edu> <87bkyemetm.fsf@igel.home>
 <9293ccdd-ca30-81b3-2042-c91327da6b28@draigBrady.com>
 <dad1522f-21ee-620e-8fcf-b290bbb9aba5@gmail.com>
From:   =?UTF-8?Q?P=c3=a1draig_Brady?= <P@draigBrady.com>
In-Reply-To: <dad1522f-21ee-620e-8fcf-b290bbb9aba5@gmail.com>
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------6a03pnqnPZoUdtQyfDpDjTL3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/03/2022 13:24, Alejandro Colomar (man-pages) wrote:
> [Added a few CCs from the relevant kernel commits]
> 
> Hi Pádraig,
> 
> On 3/10/22 14:46, Pádraig Brady wrote:
>> On 10/03/2022 07:44, Andreas Schwab wrote:
>>> On Mär 09 2022, Paul Eggert wrote:
>>>
>>>> I audited gnulib's uses of fstatat and found one fishy one that doesn't
>>>> use AT_NO_AUTOMOUNT, namely, in fts.c where the follow-symlink branch
>>>> uses
>>>> 'stat' whereas the no-follow-symlink branch uses fstatat without
>>>> AT_NO_AUTOMOUNT. I installed the first patch to cause it be
>>>> consistent in
>>>> using AT_NO_AUTOMOUNT, which is also consistent with what glibc does
>>>
>>> ??? In glibc, stat is the same as fstatat(,,,0).
>>
>> Indeed. It looks like the man page for fstatat is out of date.
>> After looking at the kernel code, it seems that:
>>    fstatat() did _not_ imply AT_NO_AUTOMOUNT from 2.6.38 -> 4.11
>>      I'm not sure it even honored the AT_NO_AUTOMOUNT flag before 4.11
>>    fstatat() did imply AT_NO_AUTOMOUNT since 4.11
>>
>> The attached patch clarifies this is the fstatat and statx man pages.
>>
>> sorry for the confusion,
>> Pádraig
> 
> ---
> 
>> Subject: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
>>
>> Don't mention AT_NO_AUTOMOUNT for fstatat.2
>> as it's implied since v4.11-rc7-14-gdeccf497d804
> 
> Even though it's implied, since code may pass it,
> and especially code written based on the old manual page,
> it would be good to keep the paragraph in fstatat.2,
> even if the text is replaced by something like
> "Before Linux x.xx, this flag was ignored.
> After Linux y.yy, this flag is implied."
> 
> Does it make sense to you?

Yes good point.
I went through the git history and the summary is fstatat()
honored the flag since 2.6.38,
ignored the flag since 3.1,
implied the flag since 4.11,

I'll add that info to fstatat(2), and the details to the commit message.

>> Don't mention commit v4.13-9318-g42f461482178 as it was reverted
> 
> Please also mention v4.15-rc1-50-g5d38f049cee1 as the commit in which it
> was reverted.
> Since it was present in some kernel releases, we might want to mention
> it in the manual page?

Well since the flag for fstatat() doesn't change anything since 3.1
it's probably best not to mention this old, short lived, and very specific info.

>> Mention that stat(), lstat(), and fstatat()
>> imply AT_NO_AUTOMOUNT, on the statx.2 man page
> 
> Please sign the patch with "Signed-off-by: ..."
> <https://www.kernel.org/doc/man-pages/patches.html>

Done in the attached.

thanks!
Pádraig

--------------6a03pnqnPZoUdtQyfDpDjTL3
Content-Type: text/x-patch; charset=UTF-8;
 name="man-fix-AT_NO_AUTOMOUNT-2.diff"
Content-Disposition: attachment; filename="man-fix-AT_NO_AUTOMOUNT-2.diff"
Content-Transfer-Encoding: base64

RnJvbSBmNDUzNjdkNDk0ZDllOTdmYThhMThkOGU0NzdlMWZhY2YyNTk2ODhjIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UD1DMz1BMWRyYWlnPTIwQnJhZHk/
PSA8UEBkcmFpZ0JyYWR5LmNvbT4KRGF0ZTogVGh1LCAxMCBNYXIgMjAyMiAxMzozNzoxMSAr
MDAwMApTdWJqZWN0OiBbUEFUQ0hdIGZpeCBkZXNjcmlwdGlvbnMgZm9yIEFUX05PX0FVVE9N
T1VOVApNSU1FLVZlcnNpb246IDEuMApDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJz
ZXQ9VVRGLTgKQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdAoKZnN0YXRhdCguLi4s
IEFUX05PX0FVVE9NT1VOVCkgaGFzIGhhZCB0aGUgZm9sbG93aW5nIGhpc3RvcnkgaW4gTGlu
dXg6CiAgdjIuNi4zNy03MzE0LWc2ZjQ1YjY1NjcyYzgKICAgIGFkZCBBVF9OT19BVVRPTU9V
TlQgYW5kIGZzdGF0YXQgaG9ub3JzIGl0CiAgdjMuMS1yYzctNjgtZ2I2YzgwNjlkMzU3Nwog
ICAgaWdub3JlIEFUX05PX0FVVE9NT1VOVCBzaW5jZSBkZWZhdWx0IG9wZXJhdGlvbiBub3cg
bGVzcyBlYWdlcmx5IG1vdW50cwogIHY0LjEwLTExMjU1LWdhNTI4ZDM1ZThiZmMKICAgIGFk
ZHMgc3RhdHggd2hpY2ggcmVpbnN0YXRlZCAyLjYuMzggYmVoYXZpb3IgZm9yIGZzdGF0YXQg
KG5vdCByZWxlYXNlZCkKICB2NC4xMS1yYzctMTQtZ2RlY2NmNDk3ZDgwNAogICAgYWRqdXN0
IGZzdGF0YXQgc28gdGhhdCBBVF9OT19BVVRPTU9VTlQgYWx3YXlzIHNwZWNpZmllZCAodG8g
c3RhdHgpCgoqIG1hbjIvc3RhdC4yOgpBZGp1c3QgQVRfTk9fQVVUT01PVU5UIGRlc2NyaXB0
aW9uIGZvciBmc3RhdGF0LjIgYXMgcGVyIHRoZSBhYm92ZSwKdG8gaW5kaWNhdGUgQVRfTk9f
QVVUT01PVU5UIHNob3VsZCBiZSBhdm9pZGVkIHdpdGggZnN0YXRhdCgpIHNpbmNlCml0J3Mg
aWdub3JlZCBzaW5jZSAzLjEgYW5kIGltcGxpZWQgc2luY2UgNC4xMS4KCkRvbid0IG1lbnRp
b24gY29tbWl0IHY0LjEzLTkzMTgtZzQyZjQ2MTQ4MjE3OCBhcyBpdCB3YXMgcmV2ZXJ0ZWQs
CmFuZCBtb290IGFueXdheSBzaW5jZSB3ZSBjYW4ndCBhZGp1c3QgQVRfTk9fQVVUT01PVU5U
IHNpbmNlIDMuMS4KCiogbWFuMi9zdGF0eC4yOgpNZW50aW9uIHRoYXQgc3RhdCgpLCBsc3Rh
dCgpLCBhbmQgZnN0YXRhdCgpIGltcGx5IEFUX05PX0FVVE9NT1VOVC4KClNpZ25lZC1vZmYt
Ynk6IFDDoWRyYWlnIEJyYWR5IDxQQGRyYWlnQnJhZHkuY29tPgotLS0KIG1hbjIvc3RhdC4y
ICB8IDMxICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIG1hbjIvc3RhdHguMiB8
IDE4ICsrKysrKysrKysrKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25z
KCspLCAzMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tYW4yL3N0YXQuMiBiL21hbjIv
c3RhdC4yCmluZGV4IDAxNmMxZjQ3ZC4uOTAwMGIyY2E2IDEwMDY0NAotLS0gYS9tYW4yL3N0
YXQuMgorKysgYi9tYW4yL3N0YXQuMgpAQCAtMzE5LDM0ICszMTksOSBAQCB0byBvYnRhaW4g
aXRzIGRlZmluaXRpb24uCiAuVFAKIC5CUiBBVF9OT19BVVRPTU9VTlQgIiAoc2luY2UgTGlu
dXggMi42LjM4KSIKIERvbid0IGF1dG9tb3VudCB0aGUgdGVybWluYWwgKCJiYXNlbmFtZSIp
IGNvbXBvbmVudCBvZgotLkkgcGF0aG5hbWUKLWlmIGl0IGlzIGEgZGlyZWN0b3J5IHRoYXQg
aXMgYW4gYXV0b21vdW50IHBvaW50LgotVGhpcyBhbGxvd3MgdGhlIGNhbGxlciB0byBnYXRo
ZXIgYXR0cmlidXRlcyBvZiBhbiBhdXRvbW91bnQgcG9pbnQKLShyYXRoZXIgdGhhbiB0aGUg
bG9jYXRpb24gaXQgd291bGQgbW91bnQpLgotU2luY2UgTGludXggNC4xNCwKLS5cIiBjb21t
aXQgNDJmNDYxNDgyMTc4NjVhNTQ1ZTEyOTYxMjA3NWYzZDgyOGEyYzRlNAotYWxzbyBkb24n
dCBpbnN0YW50aWF0ZSBhIG5vbmV4aXN0ZW50IG5hbWUgaW4gYW4KLW9uLWRlbWFuZCBkaXJl
Y3Rvcnkgc3VjaCBhcyB1c2VkIGZvciBhdXRvbW91bnRlciBpbmRpcmVjdCBtYXBzLgotVGhp
cwotZmxhZyBoYXMgbm8gZWZmZWN0IGlmIHRoZSBtb3VudCBwb2ludCBoYXMgYWxyZWFkeSBi
ZWVuIG1vdW50ZWQgb3Zlci4KLS5JUAotQm90aAotLkJSIHN0YXQgKCkKLWFuZAotLkJSIGxz
dGF0ICgpCi1hY3QgYXMgdGhvdWdoCi0uQiBBVF9OT19BVVRPTU9VTlQKLXdhcyBzZXQuCi0u
SVAKLVRoZQotLkIgQVRfTk9fQVVUT01PVU5UCi1jYW4gYmUgdXNlZCBpbiB0b29scyB0aGF0
IHNjYW4gZGlyZWN0b3JpZXMKLXRvIHByZXZlbnQgbWFzcy1hdXRvbW91bnRpbmcgb2YgYSBk
aXJlY3Rvcnkgb2YgYXV0b21vdW50IHBvaW50cy4KLS5JUAotVGhpcyBmbGFnIGlzIExpbnV4
LXNwZWNpZmljOyBkZWZpbmUKLS5CIF9HTlVfU09VUkNFCi0uXCIgQmVmb3JlIGdsaWJjIDIu
MTYsIGRlZmluaW5nIF9BVEZJTEVfU09VUkNFIHN1ZmZpY2VkCi10byBvYnRhaW4gaXRzIGRl
ZmluaXRpb24uCisuSSBwYXRobmFtZS4KK1NpbmNlIExpbnV4IDMuMSB0aGlzIGZsYWcgaXMg
aWdub3JlZC4KK1NpbmNlIExpbnV4IDQuMTEgdGhpcyBmbGFnIGlzIGltcGxpZWQuCiAuVFAK
IC5CIEFUX1NZTUxJTktfTk9GT0xMT1cKIElmCmRpZmYgLS1naXQgYS9tYW4yL3N0YXR4LjIg
Yi9tYW4yL3N0YXR4LjIKaW5kZXggMDRiM2U1MDc1Li5kNGU2Mzg3NTYgMTAwNjQ0Ci0tLSBh
L21hbjIvc3RhdHguMgorKysgYi9tYW4yL3N0YXR4LjIKQEAgLTE5NSwxMSArMTk1LDIzIEBA
IERvbid0IGF1dG9tb3VudCB0aGUgdGVybWluYWwgKCJiYXNlbmFtZSIpIGNvbXBvbmVudCBv
ZgogaWYgaXQgaXMgYSBkaXJlY3RvcnkgdGhhdCBpcyBhbiBhdXRvbW91bnQgcG9pbnQuCiBU
aGlzIGFsbG93cyB0aGUgY2FsbGVyIHRvIGdhdGhlciBhdHRyaWJ1dGVzIG9mIGFuIGF1dG9t
b3VudCBwb2ludAogKHJhdGhlciB0aGFuIHRoZSBsb2NhdGlvbiBpdCB3b3VsZCBtb3VudCku
Ci1UaGlzIGZsYWcgY2FuIGJlIHVzZWQgaW4gdG9vbHMgdGhhdCBzY2FuIGRpcmVjdG9yaWVz
Ci10byBwcmV2ZW50IG1hc3MtYXV0b21vdW50aW5nIG9mIGEgZGlyZWN0b3J5IG9mIGF1dG9t
b3VudCBwb2ludHMuCitUaGlzCitmbGFnIGhhcyBubyBlZmZlY3QgaWYgdGhlIG1vdW50IHBv
aW50IGhhcyBhbHJlYWR5IGJlZW4gbW91bnRlZCBvdmVyLgorLklQCiBUaGUKIC5CIEFUX05P
X0FVVE9NT1VOVAotZmxhZyBoYXMgbm8gZWZmZWN0IGlmIHRoZSBtb3VudCBwb2ludCBoYXMg
YWxyZWFkeSBiZWVuIG1vdW50ZWQgb3Zlci4KK2ZsYWcgY2FuIGJlIHVzZWQgaW4gdG9vbHMg
dGhhdCBzY2FuIGRpcmVjdG9yaWVzCit0byBwcmV2ZW50IG1hc3MtYXV0b21vdW50aW5nIG9m
IGEgZGlyZWN0b3J5IG9mIGF1dG9tb3VudCBwb2ludHMuCisuSVAKK0FsbCBvZgorLkJSIHN0
YXQgKCkgLAorLkJSIGxzdGF0ICgpICwKK2FuZAorLkJSIGZzdGF0YXQgKCkKK2FjdCBhcyB0
aG91Z2gKKy5CIEFUX05PX0FVVE9NT1VOVAord2FzIHNldC4KKy5JUAogVGhpcyBmbGFnIGlz
IExpbnV4LXNwZWNpZmljOyBkZWZpbmUKIC5CIF9HTlVfU09VUkNFCiAuXCIgQmVmb3JlIGds
aWJjIDIuMTYsIGRlZmluaW5nIF9BVEZJTEVfU09VUkNFIHN1ZmZpY2VkCi0tIAoyLjMxLjEK
Cg==

--------------6a03pnqnPZoUdtQyfDpDjTL3--
