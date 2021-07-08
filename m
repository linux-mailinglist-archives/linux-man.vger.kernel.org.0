Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E8943BF9F9
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 14:22:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbhGHMZI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 08:25:08 -0400
Received: from mengyan1223.wang ([89.208.246.23]:39380 "EHLO mengyan1223.wang"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229533AbhGHMZI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 8 Jul 2021 08:25:08 -0400
X-Greylist: delayed 524 seconds by postgrey-1.27 at vger.kernel.org; Thu, 08 Jul 2021 08:25:08 EDT
Received: from [192.168.124.4] (unknown [124.115.222.150])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@mengyan1223.wang)
        by mengyan1223.wang (Postfix) with ESMTPSA id F226365C31;
        Thu,  8 Jul 2021 08:13:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mengyan1223.wang;
        s=mail; t=1625746421;
        bh=QIHJtrd/TfL97tNEkVgxe7KXu0Vg9e9z38uYf0582HI=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=Z/kU55Kn+rBU/xP93jnUvOcg70Gmde467B2+Mgqp4UPcrEa5bFkw8s4bSzZecPQf2
         h/DaGDaWd+3z9tjNhmPPT3EvUcJ167Kv8AwLXdcjC0PrygtpLFV9CLSADzgIRiGeub
         Hl+a6u/JuwFfGxe/+MltMFGHSHENb1KcFSVBpFE1LXH+od1HFXaUH82EBM16xoshjK
         NmZT7vI4cV0ZuF1Th1MVyh3pRgoDxq6Nn3leWgCLwPPR7bdEQ68worrcVBlL+Kyz3q
         GUK0gjfRcbo0S6wKoIUf/pG7B/KX5TzH2XmrnJWmXFxhzRVC2+Wr4qEyZppFSW4VQF
         RSuvDuibrLjeQ==
Message-ID: <4850d178ed843ffeb0bfb6945f26c9c75d2953c4.camel@mengyan1223.wang>
Subject: Re: strlen
From:   Xi Ruoyao <xry111@mengyan1223.wang>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Jonny Grant <jg@jguk.org>
Cc:     gcc-help@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fw@deneb.enyo.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Thu, 08 Jul 2021 20:13:37 +0800
In-Reply-To: <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
         <87lfhpgxf8.fsf@mid.deneb.enyo.de>
         <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
         <87363whf2z.fsf@mid.deneb.enyo.de>
         <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
         <87bl7fozxi.fsf@mid.deneb.enyo.de>
         <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
         <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
         <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
         <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
         <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
         <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
         <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 2021-07-08 at 13:06 +0200, Alejandro Colomar (man-pages) via
Gcc-help wrote:
> On 7/8/21 12:07 PM, Jonny Grant wrote:
> > Thank you for your reply.
> > 
> > We can't guarantee safestrlen() won't be called with NULL. So because
> > strlen() itself doesn't check for NULL in C standard we'd need to call
> > the wrapper so that NULL can be checked for.
> > 
> > I'd like to avoid the compiler removing certain execution paths.
> > I'd rather keep all code paths, even if they are not taken, just in
> > case a NULL pointer creeps in due to an external device that is
> > connected to an embedded system.

If you are taking a pointer from external device "correctly", gcc won't
delete your NULL checking path.  For example:

// defined by linker script
extern volatile char *an_io_port_providing_a_pointer;

int f()
{
    char *ptr = an_io_port_providing_a_pointer;

    // C standard disallows to remove it
    if (ptr == NULL) {
        gracefully_report_bug("some message");
        return -EINVAL;
    }

    return g(ptr);
}

Or

// in assembly
extern char *read_pointer_from_io_port(int io_port_id);

int f()
{
    char *ptr = read_pointer_from_io_port(IO_PORT_A);

    // C standard disallows to remove it
    if (ptr == NULL) {
        gracefully_report_bug("some message");
        return -EINVAL;
    }

    return g(ptr);
}

OTOH, if you are taking the pointer from external input incorrectly (i.
e. violating C standard and invoking some UB), even if you used some way
to enforce the compiler to keep the NULL checking, it would be still
unsafe.

Even if you want to be "careful" (I'd rather call this "paranoid"), you
can use -fno-delete-null-pointer-checks, instead of turning off all
optimizations.

And, GCC "optimize" attribute/pragma is somewhat buggy and only intended
for debugging GCC.  If you need to turn off some optmization for a
function, it's better to put the function into a seperate TU and use
command line option to disable the optimization.

By the way, if C can't provide the safety feature you need (for example
programming something launching a nuclear missile :), maybe it's better
to use Ada or something.

-- 
Xi Ruoyao <xry111@mengyan1223.wang>
School of Aerospace Science and Technology, Xidian University

