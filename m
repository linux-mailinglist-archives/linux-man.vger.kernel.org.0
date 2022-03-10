Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27FDE4D4856
	for <lists+linux-man@lfdr.de>; Thu, 10 Mar 2022 14:46:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241886AbiCJNr3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Mar 2022 08:47:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234363AbiCJNr2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Mar 2022 08:47:28 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C820614FBC7
        for <linux-man@vger.kernel.org>; Thu, 10 Mar 2022 05:46:26 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id i8so8048225wrr.8
        for <linux-man@vger.kernel.org>; Thu, 10 Mar 2022 05:46:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=RdMZr5a+r8lUDCg36nT5yppfZqu05y8Tg3lDLFQUHuM=;
        b=AXKTB89cDmY528YnH6jPqIe3IFJ/rI8MDCsJahPsr7HMxTF1PGqEBuEoWZCuQ4Szrn
         jQPA7g56tmnvpm+2mopYhqodMBVTiGNPbreOZnBh2fEXQKNC556//sgWXf8nro3hr7lP
         7d+un0QGhUO72tW33bwkGv04olDZuP7agdHp0ZykTdxwTTeFsQg24fSpnLu3IzPVRo58
         IXMrC0kHCOSJOXR27ay6eupPx7bg25zrtS+oTaLH0GlTfktRfARRsburoRzMpZHa8BUA
         ohsCVChJophMm76xQ5/zSzsNBf9x8FEXE85rn8oYkHW8p1YaHMxkMQXlXOsnvERFDUuK
         Qn/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to;
        bh=RdMZr5a+r8lUDCg36nT5yppfZqu05y8Tg3lDLFQUHuM=;
        b=fgiR8RpWEfMut52s9vSrFm86FAP+2Moy5sD17jWgNsNk+LJyn8JE/ODgIQBV18LmSP
         aSGtVPKnRJb00UsNrbu3KwYBGMToghaYM/QasQqMAzQFvx5f72BeSRXgimyZKXe7PaXa
         cI6imhlK2FmeURg1WYZyLYK37rh4mnC77296cPjEJqXI9Gb+FJM8MAQmFt7uuK4170+f
         B3liZVajPrfiPcfVyyCZ5MpdQIl79/1kv+CHnqmcdyUEhLB1Psnb9dHfT0xr8peZDa9o
         x8HmFURfGVPCMlIBWJqH7xfPtWFH0p3eXvHS4Kw5IWq1WkD1PjIaizt24mcR/SoZEMMi
         jFwg==
X-Gm-Message-State: AOAM531refEjGe1Lz+zcVRHvK97OAOD/FncSUx4b6qecHSJV7c8CGnzM
        JuNMoMC8L9uy7oyyjpNg/aEupGOrarpWOQ==
X-Google-Smtp-Source: ABdhPJzKIQtS3KkPrvlU2lBEfB80xdn48A77dg0+Mtlgx/8HqvENsmC/UCWh3r20dr/HTXjolDzGxA==
X-Received: by 2002:adf:dd8e:0:b0:1f0:22f1:aed8 with SMTP id x14-20020adfdd8e000000b001f022f1aed8mr3623163wrl.269.1646919985243;
        Thu, 10 Mar 2022 05:46:25 -0800 (PST)
Received: from [192.168.1.9] (95-44-90-175-dynamic.agg2.lod.rsl-rtd.eircom.net. [95.44.90.175])
        by smtp.googlemail.com with ESMTPSA id q11-20020adfcd8b000000b001e320028660sm4112788wrj.92.2022.03.10.05.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 05:46:24 -0800 (PST)
Sender: =?UTF-8?Q?P=C3=A1draig_Brady?= <pixelbeat@gmail.com>
Content-Type: multipart/mixed; boundary="------------Z4aS6JYHFFEXwFapmfuvBmYe"
Message-ID: <9293ccdd-ca30-81b3-2042-c91327da6b28@draigBrady.com>
Date:   Thu, 10 Mar 2022 13:46:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:97.0) Gecko/20100101
 Thunderbird/97.0
Subject: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
Content-Language: en-US
To:     Andreas Schwab <schwab@linux-m68k.org>,
        Paul Eggert <eggert@cs.ucla.edu>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     Gnulib bugs <bug-gnulib@gnu.org>, Coreutils <coreutils@gnu.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <ed3ac15c-9e92-73b7-b7f9-8281488e8778@draigBrady.com>
 <3a4c9f63-0203-a810-6113-5c77a16e3690@cs.ucla.edu>
 <95140173-2913-e377-5824-8a569ac78b5b@draigBrady.com>
 <5c608ef7-f279-6afc-37f5-6a50442a3143@cs.ucla.edu>
 <bdd68a31-ef3a-f022-bc72-c051690cee59@draigBrady.com>
 <6645f678-4293-4692-8472-eee0bacee63f@cs.ucla.edu>
 <670898ee-3b1c-97cd-290c-b6d91bfdaa07@draigBrady.com>
 <5612cf59-a6da-6974-6a97-e406a4f4d557@cs.ucla.edu> <87bkyemetm.fsf@igel.home>
From:   =?UTF-8?Q?P=c3=a1draig_Brady?= <P@draigBrady.com>
In-Reply-To: <87bkyemetm.fsf@igel.home>
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------Z4aS6JYHFFEXwFapmfuvBmYe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/03/2022 07:44, Andreas Schwab wrote:
> On Mär 09 2022, Paul Eggert wrote:
> 
>> I audited gnulib's uses of fstatat and found one fishy one that doesn't
>> use AT_NO_AUTOMOUNT, namely, in fts.c where the follow-symlink branch uses
>> 'stat' whereas the no-follow-symlink branch uses fstatat without
>> AT_NO_AUTOMOUNT. I installed the first patch to cause it be consistent in
>> using AT_NO_AUTOMOUNT, which is also consistent with what glibc does
> 
> ??? In glibc, stat is the same as fstatat(,,,0).

Indeed. It looks like the man page for fstatat is out of date.
After looking at the kernel code, it seems that:
   fstatat() did _not_ imply AT_NO_AUTOMOUNT from 2.6.38 -> 4.11
     I'm not sure it even honored the AT_NO_AUTOMOUNT flag before 4.11
   fstatat() did imply AT_NO_AUTOMOUNT since 4.11

The attached patch clarifies this is the fstatat and statx man pages.

sorry for the confusion,
Pádraig
--------------Z4aS6JYHFFEXwFapmfuvBmYe
Content-Type: text/x-patch; charset=UTF-8; name="man-fix-AT_NO_AUTOMOUNT.diff"
Content-Disposition: attachment; filename="man-fix-AT_NO_AUTOMOUNT.diff"
Content-Transfer-Encoding: base64

RnJvbSBkNWMzNTZmMThiMThjY2ViMjQ1YWU5ZGYxNzUzMjI3NjBmMzJmYjJhIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UD1DMz1BMWRyYWlnPTIwQnJhZHk/
PSA8UEBkcmFpZ0JyYWR5LmNvbT4KRGF0ZTogVGh1LCAxMCBNYXIgMjAyMiAxMzozNzoxMSAr
MDAwMApTdWJqZWN0OiBbUEFUQ0hdIGZpeCBkZXNjcmlwdGlvbnMgZm9yIEFUX05PX0FVVE9N
T1VOVAoKRG9uJ3QgbWVudGlvbiBBVF9OT19BVVRPTU9VTlQgZm9yIGZzdGF0YXQuMgphcyBp
dCdzIGltcGxpZWQgc2luY2UgdjQuMTEtcmM3LTE0LWdkZWNjZjQ5N2Q4MDQKCkRvbid0IG1l
bnRpb24gY29tbWl0IHY0LjEzLTkzMTgtZzQyZjQ2MTQ4MjE3OCBhcyBpdCB3YXMgcmV2ZXJ0
ZWQKCk1lbnRpb24gdGhhdCBzdGF0KCksIGxzdGF0KCksIGFuZCBmc3RhdGF0KCkKaW1wbHkg
QVRfTk9fQVVUT01PVU5ULCBvbiB0aGUgc3RhdHguMiBtYW4gcGFnZQotLS0KIG1hbjIvc3Rh
dC4yICB8IDMxIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIG1hbjIvc3RhdHgu
MiB8IDE4ICsrKysrKysrKysrKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspLCAzNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tYW4yL3N0YXQuMiBiL21h
bjIvc3RhdC4yCmluZGV4IDAxNmMxZjQ3ZC4uNDNhYjViNzc3IDEwMDY0NAotLS0gYS9tYW4y
L3N0YXQuMgorKysgYi9tYW4yL3N0YXQuMgpAQCAtMzE3LDM3ICszMTcsNiBAQCBUaGlzIGZs
YWcgaXMgTGludXgtc3BlY2lmaWM7IGRlZmluZQogLlwiIEJlZm9yZSBnbGliYyAyLjE2LCBk
ZWZpbmluZyBfQVRGSUxFX1NPVVJDRSBzdWZmaWNlZAogdG8gb2J0YWluIGl0cyBkZWZpbml0
aW9uLgogLlRQCi0uQlIgQVRfTk9fQVVUT01PVU5UICIgKHNpbmNlIExpbnV4IDIuNi4zOCki
Ci1Eb24ndCBhdXRvbW91bnQgdGhlIHRlcm1pbmFsICgiYmFzZW5hbWUiKSBjb21wb25lbnQg
b2YKLS5JIHBhdGhuYW1lCi1pZiBpdCBpcyBhIGRpcmVjdG9yeSB0aGF0IGlzIGFuIGF1dG9t
b3VudCBwb2ludC4KLVRoaXMgYWxsb3dzIHRoZSBjYWxsZXIgdG8gZ2F0aGVyIGF0dHJpYnV0
ZXMgb2YgYW4gYXV0b21vdW50IHBvaW50Ci0ocmF0aGVyIHRoYW4gdGhlIGxvY2F0aW9uIGl0
IHdvdWxkIG1vdW50KS4KLVNpbmNlIExpbnV4IDQuMTQsCi0uXCIgY29tbWl0IDQyZjQ2MTQ4
MjE3ODY1YTU0NWUxMjk2MTIwNzVmM2Q4MjhhMmM0ZTQKLWFsc28gZG9uJ3QgaW5zdGFudGlh
dGUgYSBub25leGlzdGVudCBuYW1lIGluIGFuCi1vbi1kZW1hbmQgZGlyZWN0b3J5IHN1Y2gg
YXMgdXNlZCBmb3IgYXV0b21vdW50ZXIgaW5kaXJlY3QgbWFwcy4KLVRoaXMKLWZsYWcgaGFz
IG5vIGVmZmVjdCBpZiB0aGUgbW91bnQgcG9pbnQgaGFzIGFscmVhZHkgYmVlbiBtb3VudGVk
IG92ZXIuCi0uSVAKLUJvdGgKLS5CUiBzdGF0ICgpCi1hbmQKLS5CUiBsc3RhdCAoKQotYWN0
IGFzIHRob3VnaAotLkIgQVRfTk9fQVVUT01PVU5UCi13YXMgc2V0LgotLklQCi1UaGUKLS5C
IEFUX05PX0FVVE9NT1VOVAotY2FuIGJlIHVzZWQgaW4gdG9vbHMgdGhhdCBzY2FuIGRpcmVj
dG9yaWVzCi10byBwcmV2ZW50IG1hc3MtYXV0b21vdW50aW5nIG9mIGEgZGlyZWN0b3J5IG9m
IGF1dG9tb3VudCBwb2ludHMuCi0uSVAKLVRoaXMgZmxhZyBpcyBMaW51eC1zcGVjaWZpYzsg
ZGVmaW5lCi0uQiBfR05VX1NPVVJDRQotLlwiIEJlZm9yZSBnbGliYyAyLjE2LCBkZWZpbmlu
ZyBfQVRGSUxFX1NPVVJDRSBzdWZmaWNlZAotdG8gb2J0YWluIGl0cyBkZWZpbml0aW9uLgot
LlRQCiAuQiBBVF9TWU1MSU5LX05PRk9MTE9XCiBJZgogLkkgcGF0aG5hbWUKZGlmZiAtLWdp
dCBhL21hbjIvc3RhdHguMiBiL21hbjIvc3RhdHguMgppbmRleCAwNGIzZTUwNzUuLmQ0ZTYz
ODc1NiAxMDA2NDQKLS0tIGEvbWFuMi9zdGF0eC4yCisrKyBiL21hbjIvc3RhdHguMgpAQCAt
MTk1LDExICsxOTUsMjMgQEAgRG9uJ3QgYXV0b21vdW50IHRoZSB0ZXJtaW5hbCAoImJhc2Vu
YW1lIikgY29tcG9uZW50IG9mCiBpZiBpdCBpcyBhIGRpcmVjdG9yeSB0aGF0IGlzIGFuIGF1
dG9tb3VudCBwb2ludC4KIFRoaXMgYWxsb3dzIHRoZSBjYWxsZXIgdG8gZ2F0aGVyIGF0dHJp
YnV0ZXMgb2YgYW4gYXV0b21vdW50IHBvaW50CiAocmF0aGVyIHRoYW4gdGhlIGxvY2F0aW9u
IGl0IHdvdWxkIG1vdW50KS4KLVRoaXMgZmxhZyBjYW4gYmUgdXNlZCBpbiB0b29scyB0aGF0
IHNjYW4gZGlyZWN0b3JpZXMKLXRvIHByZXZlbnQgbWFzcy1hdXRvbW91bnRpbmcgb2YgYSBk
aXJlY3Rvcnkgb2YgYXV0b21vdW50IHBvaW50cy4KK1RoaXMKK2ZsYWcgaGFzIG5vIGVmZmVj
dCBpZiB0aGUgbW91bnQgcG9pbnQgaGFzIGFscmVhZHkgYmVlbiBtb3VudGVkIG92ZXIuCisu
SVAKIFRoZQogLkIgQVRfTk9fQVVUT01PVU5UCi1mbGFnIGhhcyBubyBlZmZlY3QgaWYgdGhl
IG1vdW50IHBvaW50IGhhcyBhbHJlYWR5IGJlZW4gbW91bnRlZCBvdmVyLgorZmxhZyBjYW4g
YmUgdXNlZCBpbiB0b29scyB0aGF0IHNjYW4gZGlyZWN0b3JpZXMKK3RvIHByZXZlbnQgbWFz
cy1hdXRvbW91bnRpbmcgb2YgYSBkaXJlY3Rvcnkgb2YgYXV0b21vdW50IHBvaW50cy4KKy5J
UAorQWxsIG9mCisuQlIgc3RhdCAoKSAsCisuQlIgbHN0YXQgKCkgLAorYW5kCisuQlIgZnN0
YXRhdCAoKQorYWN0IGFzIHRob3VnaAorLkIgQVRfTk9fQVVUT01PVU5UCit3YXMgc2V0Lgor
LklQCiBUaGlzIGZsYWcgaXMgTGludXgtc3BlY2lmaWM7IGRlZmluZQogLkIgX0dOVV9TT1VS
Q0UKIC5cIiBCZWZvcmUgZ2xpYmMgMi4xNiwgZGVmaW5pbmcgX0FURklMRV9TT1VSQ0Ugc3Vm
ZmljZWQKLS0gCjIuMzEuMQoK

--------------Z4aS6JYHFFEXwFapmfuvBmYe--
