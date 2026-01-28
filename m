Return-Path: <linux-man+bounces-4997-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHV4EdllemmB5gEAu9opvQ
	(envelope-from <linux-man+bounces-4997-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 20:39:05 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E16D5A835E
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 20:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2D6F73006132
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 19:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4821374189;
	Wed, 28 Jan 2026 19:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="aasWlh2l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EE923EA92
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 19:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769629142; cv=pass; b=UYU+R1GRbOMbXuJnx3QxVnheO003Qe4QPDpGSEUWf/81aJjfOpOiSyznCABuhgEfa1bvhvRhg7L6jL80BFpIycFijid3XqiP0rMhTKn+SGj9gaNNZ85dC8BXXhMaoRNLDQM4PXXnEA2i9wDOy740MwzxO+FyXTYQKjUQCZAvrwI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769629142; c=relaxed/simple;
	bh=bXl7KaF1vRdlRkYFC+pk1cUVz5PrRmXFymwTyH7l1nU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hBtKkbZim+iBkUbqdOkPy13w5E0+TH1nWjhxWrean0SADQQxbStOIk/CLdgp4wRku3V0X67G5HsTPOn939801GcBUYEaPfIFy1xR26KE3J/y3519hfY3wkccUoAylw6iop+j02SlgwoWeFWnsaB9Rj4y9bWoEoP2c1bdv+e7D6Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=aasWlh2l; arc=pass smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-50299648ae9so56171cf.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 11:39:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769629140; cv=none;
        d=google.com; s=arc-20240605;
        b=c7LC924MoidHnMAJwEX4zBaA5jy4DAtS0NoH6GzoOjJPwY2F4Rwz1Ws3P30BWDWADG
         yb/v/xGcTlJKTSdDDnjuHmRIR6GVjcbYd3Lq8k3ECQTv8+JAHatUoxYkkoIPkdo7hahp
         pb5lSxFoNYaUT7CPOMBWRygBtt+oIRMp/WktHxUMrQo146hdEmDLMBi/O0w48cWh315r
         iR0aURvQdVAu2XN5EZPCpEWqKFNWXP6CzQsogRITXvZXdOc7PAsjiqvrO3M3UNuV9WRK
         uEhTZ/1i+aqea0iyhSp0Om/LxRSEziuAvizi8jX6mhm2VQHMUzUi+KkkOtVeIDqYFTTp
         tgHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4v7ySYKp8bMgL6J1iC9b/PIn3ZsRvNpKsfV8vp1Pby4=;
        fh=q/X4SvV7NLX4Tw5Lq0pekyYFmCFQKR4XUb8GgegrpNY=;
        b=d2jiBNgFM0xv4F1zOdbUH4hKQ3iMK+Vbx/ctu9SkX/D8cUxoFUXCOIzYdtRsgUN/BG
         7QCp5jAlBJW86IJ2wDEE7k3LbsXrOZo4FKlh+K9mHdDHENlt8ibR08JyBj+BEo8hEZiR
         X2zQQi3eHFk1aM+q6Og7MmpIIJHb/IMtL8T6pcpwWrhFlKKaxt5A9gOdpq/Ck1DRy7PA
         kP3BV2bXWPlgxJiwgZJdNgjmufQphffNYs4MRHEIpRDKgaDiPssl/FC7m4CAl5mqCOW0
         mXbC0+jWT+TO4BRRRdjpU0k0i2PkFbHAtDdwYc1rL3ZWJzVpnWZMxHLR+09R3lZbGOti
         2aAA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769629140; x=1770233940; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4v7ySYKp8bMgL6J1iC9b/PIn3ZsRvNpKsfV8vp1Pby4=;
        b=aasWlh2lUuS5zBp0w87SRu00kWGB+bGevbZwG1eg68c0/Ievnf8w9RrFn14dhW4ts8
         BFgM1B5VjS1QXmBLBm4cgWVgsw+rZ5Ddalo4I2XBxYf/vqDU9cH/OrblJUeXmHB2DfeK
         6VI3LDkv9dF9yvuPQ+oBMjcOj0e5c1Sc9M+djv3aP66M11yROhEKbaXNgex1VVaFnkm+
         n5Z7PFpqG7EBtsuALxVNnxCWvs2JgTGmQQS64JVojIdvRmigfooqp/xL/5vOrz9bIN5G
         XYqJgdMuzKaL0AyauZ5PJ+QmiASKAjHuaaAkaJclqbgvheHbpn4Zb6bukjroVNeeGUaz
         ixjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769629140; x=1770233940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4v7ySYKp8bMgL6J1iC9b/PIn3ZsRvNpKsfV8vp1Pby4=;
        b=CtprJ4pebsq3OhC2txSKFOl2YgpZ7h/QhDks4ntkj0dAlqz1MkGRq4rIim8+aQw+qq
         VHswLndLhhsnMiphEdvak5bShvt9nn0kdA6pfPxyAZOYbL341ySXYXuiulVKA/ZZ4njB
         0J1Vb10/bTxzP3xjpoyqUnPOFscE7vqXZHIa0P9pASS1rkZGLksA8To0XZDDCjRfiNlZ
         SjNu1DVirx3UJ6CjLLNIcG0zPSZWvA/ZABy/k6Cd9cI4JHD4gZTUaowYNydMtd6dLtdO
         ubPjkshg0J1HNSKdylDNQxCDBX/i4M5l/wjJ2RV/fp7kTgmlxAtRvTeoP/YavRsMlWuH
         DlFQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5DCVXnJYwfecb1O1OagTAmUm9pru8/OPpww7BnRFUoX2Y/+TEYCsHuO57OOTrDSlNhrGbrJDUDY0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx++KEkGo3kwPhOSht0Pl7tnRZ1oXmBchdGxJMW3HONaao7CUNL
	dFN1762/LiuqoHvjy5eA1ebdqUCN7agw7tg7jgTxPAyDRO/Dy74nvpOnILQrENfX47IEKEl5QIc
	uhP9+22B+wFY2x/drHlzVwjQMBqPyD8C6yFFEuJUI
X-Gm-Gg: AZuq6aJFlnLq2QUO/DNEXLyRVodLlDkcJ8z2H550vrakf45wzJXUNjFKJFncvQCMUva
	0oS8zNlC32zCalg9REKBAt9bT2RRom6WZft1l/YJrNUlC0gqQKO/NHjuiJO8THTTWGd2Cm1oqHo
	zx0ISy+fZ9Ik86+C/75eVV09hKBdC0R5pflifwNW0PIyzO0jor9uG3OwcoVn1+QBMiV+tLtNpGS
	/5Gy87T3PxtUNnbuVFEWOiZRmpZvGs7B9DXSPRYLEI6vd/hl1fmdmDTI6YlABB8Py6szNc=
X-Received: by 2002:a05:622a:a548:b0:4ff:cb75:2a22 with SMTP id
 d75a77b69052e-503b68c9820mr1112071cf.3.1769629139985; Wed, 28 Jan 2026
 11:38:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1769608658.git.b.sachdev1904@gmail.com> <5bc8d1e2b565f5c10c9591c9fab8b6e7f545bf5d.1769608658.git.b.sachdev1904@gmail.com>
In-Reply-To: <5bc8d1e2b565f5c10c9591c9fab8b6e7f545bf5d.1769608658.git.b.sachdev1904@gmail.com>
From: Andrei Vagin <avagin@google.com>
Date: Wed, 28 Jan 2026 11:38:47 -0800
X-Gm-Features: AZwV_QgqQZmIm3zNdHRqxw0BGeS93PkiST4hiKb0DWw2IgGU-l51_kFDPeFbSNg
Message-ID: <CAEWA0a77rfpVv93RhyZvoaARtpRxG+Q_aFaDgNR6v=nFTpYzqw@mail.gmail.com>
Subject: Re: [PATCH 9/9] man/man2/statmount.2: Document STATMOUNT_BY_FD
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4997-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,szeredi.hu,toxicpanda.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avagin@google.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E16D5A835E
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 6:06=E2=80=AFAM Bhavik Sachdev <b.sachdev1904@gmail=
.com> wrote:
>
> STATMOUNT_BY_FD introduces the ability to get information about a mount
> using a fd on the mount. This functionality is currently in linux-next
> [1].
>
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/comm=
it/?h=3Dnext-20260126&id=3Dd5bc4e31f2a3f301b4214858bec834c67bb2be5c>
>
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
>  man/man2/statmount.2 | 33 ++++++++++++++++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
>
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index 79ee752c1..d354f988e 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -24,6 +24,7 @@ .SH SYNOPSIS
>  .EX
>  .B struct mnt_id_req {
>  .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
> +.BR "    __u32  mnt_fd;" "      /* fd on the mount being queried */"

struct mnt_id_req {
        __u32 size;
        union {
                __u32 mnt_ns_fd;
                __u32 mnt_fd;
        };
        __u64 mnt_id;
        __u64 param;
        __u64 mnt_ns_id;
};

Could you please document mnt_ns_fd as well?

Thanks,
Andrei

