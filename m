Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEB0C24691B
	for <lists+linux-man@lfdr.de>; Mon, 17 Aug 2020 17:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728778AbgHQPKb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Aug 2020 11:10:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726634AbgHQPK3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Aug 2020 11:10:29 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CD0BC061389;
        Mon, 17 Aug 2020 08:10:29 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id s14so1697466plp.4;
        Mon, 17 Aug 2020 08:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=L3RRwQESDGLkgdgVQIMJ2W9+h4nJ3TxIZFutxrgNcxA=;
        b=NwP/wuMKXvRX/sJB9RIlTbirIYLc+UCffDtLWcNPwJh9SXjLWSl0V7jpvYJNAJX6Ax
         WpJUDP/enKjHNyTKaDLWKivxJqnZ4CYbml1Cg0F1nCz7GGOyh3WYPcY5J1eor+C2fLmZ
         6SDHzJ2jjCbb3JvORkHomyQ0KtzUqF7kqfpp7VmwgT82nb1AlwfNyAyWHz2M/cyTLlCH
         XL8OnG8l/FhahgLTPsdv5V/L6XVRuBUqEj5ppiHVhje/RiVoIC2X95MMfSevoBwnLTxw
         pId/XU8ZLvMmiPMgS+XbcqaBHxw06rE2abOcwaheGV4vGNlYq2wMeiSXUji2BBrjMxAN
         DUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=L3RRwQESDGLkgdgVQIMJ2W9+h4nJ3TxIZFutxrgNcxA=;
        b=YKKVaiXJjaLDTqwQdwQ2yCAyz99HET1gcip7+ers32paGydMOtM88DrX25ZeyWN6C9
         s85vQncNNBcMS5Y8DsPz1jPzgpZ9fm8jX5os13O93Mn3PHrTI0667dOBnDFiYywMKbXe
         UnlrKabvP06uEYRw5+UFqCpoNJdEliBPNja7wLL8YFrFVCq5NV12+bQiJm84dKfUFkBG
         p1zCxnntylU8rGYHC2L3Hi1CePBt6IxmBM6E0pqXdLsVWbiOYxO+zI41y+Zx/q4WcuFS
         z0jJlJlchjHYP9ImF5+iQAv2BOS08p6HoT3qFJNDeK9UakKuun9UIntmzpfQKciIlWL4
         sjIg==
X-Gm-Message-State: AOAM531P8BN1AuyMo0AyvP1HO7ROvGOKOxujZ5XeVB9JEtoYUfYcTGRI
        mkngPneEfNabT6sScr+VHqwz6Ejzd+8=
X-Google-Smtp-Source: ABdhPJyiaApxy/0DdKTVJPUkM9TLIVNN05FTWWfdcO6oP61af7oB07GshzC/yVt+jNPOOCOmUII1UQ==
X-Received: by 2002:a17:90a:ac0b:: with SMTP id o11mr13640088pjq.191.1597677028669;
        Mon, 17 Aug 2020 08:10:28 -0700 (PDT)
Received: from google.com ([2620:15c:211:1:7220:84ff:fe09:5e58])
        by smtp.gmail.com with ESMTPSA id h9sm21631961pfq.18.2020.08.17.08.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 08:10:26 -0700 (PDT)
Date:   Mon, 17 Aug 2020 08:10:24 -0700
From:   Minchan Kim <minchan@kernel.org>
To:     Christian Brauner <christian.brauner@ubuntu.com>
Cc:     alexander.h.duyck@linux.intel.com, axboe@kernel.dk,
        bgeffon@google.com, christian@brauner.io, dancol@google.com,
        hannes@cmpxchg.org, jannh@google.com, joaodias@google.com,
        joel@joelfernandes.org, ktkhai@virtuozzo.com,
        linux-man@vger.kernel.org, linux-mm@kvack.org, mhocko@suse.com,
        mm-commits@vger.kernel.org, oleksandr@redhat.com,
        rientjes@google.com, shakeelb@google.com, sj38.park@gmail.com,
        sjpark@amazon.de, sonnyrao@google.com, sspatil@google.com,
        surenb@google.com, timmurray@google.com,
        torvalds@linux-foundation.org, vbabka@suse.cz,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [patch 17/39] mm/madvise: introduce process_madvise() syscall:
 an external memory hinting API
Message-ID: <20200817151024.GA3852332@google.com>
References: <20200814172939.55d6d80b6e21e4241f1ee1f3@linux-foundation.org>
 <20200815003058.6OQJpEXTM%akpm@linux-foundation.org>
 <20200816081227.ngw3l45c5uncesmr@wittgenstein>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200816081227.ngw3l45c5uncesmr@wittgenstein>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Aug 16, 2020 at 10:12:27AM +0200, Christian Brauner wrote:
> On Fri, Aug 14, 2020 at 05:30:58PM -0700, Andrew Morton wrote:
> > From: Minchan Kim <minchan@kernel.org>
> > Subject: mm/madvise: introduce process_madvise() syscall: an external memory hinting API
> > 
> 
> <snip>
> 
> > +SYSCALL_DEFINE5(process_madvise, int, pidfd, const struct iovec __user *, vec,
> > +		unsigned long, vlen, int, behavior, unsigned int, flags)
> > +{
> > +	ssize_t ret;
> > +	struct iovec iovstack[UIO_FASTIOV];
> > +	struct iovec *iov = iovstack;
> > +	struct iov_iter iter;
> > +
> > +	ret = import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
> > +	if (ret >= 0) {
> > +		ret = do_process_madvise(pidfd, &iter, behavior, flags);
> > +		kfree(iov);
> > +	}
> > +	return ret;
> > +}
> > +
> > +#ifdef CONFIG_COMPAT
> > +COMPAT_SYSCALL_DEFINE5(process_madvise, compat_int_t, pidfd,
> > +			const struct compat_iovec __user *, vec,
> > +			compat_ulong_t, vlen,
> > +			compat_int_t, behavior,
> > +			compat_uint_t, flags)
> > +
> > +{
> > +	ssize_t ret;
> > +	struct iovec iovstack[UIO_FASTIOV];
> > +	struct iovec *iov = iovstack;
> > +	struct iov_iter iter;
> > +
> > +	ret = compat_import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack),
> > +				&iov, &iter);
> > +	if (ret >= 0) {
> > +		ret = do_process_madvise(pidfd, &iter, behavior, flags);
> > +		kfree(iov);
> > +	}
> > +	return ret;
> > +}
> > +#endif
> 
> Note, I'm only commenting on this patch because it has already been
> dropped for this merge window. Otherwise I wouldn't interfer with stuff
> that has already been sent for inclusion.
> 
> I haven't noticed this before but why do you need this
> COMPAT_SYSCALL_DEFINE5()? New code we add today tries pretty hard to
> avoid the compat syscall definitions. (See what we did for
> pidfd_send_signal(), seccomp, and in io_uring and in various other places.)
> 
> Afaict, this could just be sm like (__completely untested__):
> 
> static inline int madv_import_iovec(int type, const struct iovec __user *uvec, unsigned nr_segs,
> 				    unsigned fast_segs, struct iovec **iov, struct iov_iter *i)
> {
> #ifdef CONFIG_COMPAT
> 	if (in_compat_syscall())
> 		return compat_import_iovec(type, (struct compat_iovec __user *)uvec, nr_segs,
> 					   fast_segs, iov, i);
> #endif
> 
> 	return import_iovec(type, uvec, nr_segs, fast_segs, iov, i);
> }
> 
> SYSCALL_DEFINE5(process_madvise, int, pidfd, const struct iovec __user *, vec,
> 		 unsigned long, vlen, int, behavior, unsigned int, flags)
> {
> 	ssize_t ret;
> 	struct iovec iovstack[UIO_FASTIOV];
> 	struct iovec *iov = iovstack;
> 	struct iov_iter iter;
> 
> 	ret = madv_import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
> 	if (ret < 0)
> 		return ret;
> 
> 	ret = do_process_madvise(pidfd, &iter, behavior, flags);
> 	kfree(iov);
> 	return ret;
> }
> 
> or is there are specific reason this wouldn't work here?

No, I just didn't know such trend to avoid compact syscall definitions.
Thanks for the information.

I think your suggestion will work. Let me have it at respin.
Thanks!
