Return-Path: <linux-man+bounces-4960-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COsHBbC0d2nKkQEAu9opvQ
	(envelope-from <linux-man+bounces-4960-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 19:38:40 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 777DD8C26A
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 19:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A3873014133
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 18:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD4D238C0D;
	Mon, 26 Jan 2026 18:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SZWHbYZ8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935E2223DFB
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 18:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769452709; cv=none; b=umWoky5QNUbmyzkuedyYGSLuPF3i644jClUaeJ1FQinKbTT93S7NiS1b397N5Hh8VH1yoRb6gQKTZUXNviwGDcX8Ej7r/U7UBbV7pmweRpHC0R60rNPmpAIUvLjsCb74An9Wev74+lkVcZ92EfIWmp/oQwlEM2ws1DWpXu7Fjfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769452709; c=relaxed/simple;
	bh=iDhpyyMouJfqqHP9/dFBSFog49Z6EDyHRI4PEUNaGTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QDZm63rbrGMdR6DPRAeCECn0jV3noHV55SqAEpKfeyEN/e0YHVz1Iq4+k/uN5IDLvzYCiGABIu1jSXwAcOcpPTGgC+XkOcX9WKJnM4RzrY+aZYb9rXvPAXicCKif00zs02QHoGQz9WQdD7VrmbNLJE9qOlwEAkAgf2q1Pi+0nCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SZWHbYZ8; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-794719afcd4so4786527b3.1
        for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 10:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769452707; x=1770057507; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P4JhBa2AYS8obmE3t7QFaLUD1RnAuf8Yf9kOyuZ+0vI=;
        b=SZWHbYZ8447W5o1wb7zml4SD2yWXTS/1zfYfUJoK9U3omiK6pvXhmgZ6GdFwLztZF9
         0eQ+oeXXloFa/9/KcX0iMWfU24ovElgqsU6TPE6b4rg+HVd302HL201nDLGiFKSkhFGW
         EMGsg7FlQlU99tM+zLYF7/orkUVWnEA3CQvnCaQZ5DtRijA3gDjExAJdv/0mh9mB+VOM
         KSPm3LqP+UH+U1FS8EJdTJWB/zXn8PwE5PdF276tTCHdDPH9+YKS78XzJ7M8nwoPgL80
         foB/Slm+obV29p34hejjf+8Uikm99e6VsJV7U7jpGgxBnSq36RMshb0bAjiV+OxF7YTF
         quqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769452707; x=1770057507;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4JhBa2AYS8obmE3t7QFaLUD1RnAuf8Yf9kOyuZ+0vI=;
        b=N0xekUpSDvIgbvtE4UWGQhirSSvsrkOGhb0W1tdOppckBb6oUfA6QW1d0yYNxu9LkL
         4nyoGCU0A6I2Ag7LAzYWPDhjbTFUSotOnwl7L5XeHv4UT3cy7WFvHCtEFVrvQMOUAo53
         lQmbQ4djt2mOsw52wWIV9fppGHwedDb/ukx1wX/Vq8qp5ZKvVLVgyapIC303QezD8wH7
         17I7zae93Gyou6Xun6+Ia2cQZ+LauyE0+mQuLObkk6rOiBDu2kKHxzB5JA1ywXoCPQHI
         74sLP80QKfY1tOBGU2k/7siEYJl+hI9Cri7WlZzl7JNBRBNdZsXEdrYY5A7QJJD80VwN
         0oVQ==
X-Gm-Message-State: AOJu0YxJAAAOW72gDPCbcNxySULO6PcbfH0/8Pd4u9cDrfb9e3U2+TYM
	iJq2syFeDV6QlfoLvBrCcXZzWY8IQZxbFQeJKc71n5c5JE1QJTRlaRd4
X-Gm-Gg: AZuq6aLqQ6FIux+rphq/TxPe+L0JOOw3ROnHUd+NsR0Pwhr9usdfKpCv4m8DENprjjO
	zjmMnH9hr3Vf+hiztiC6GOQTRhjKAg/EnBes5Y83ns9ZJH3j3Uxl7RPxlig9jcq0n4HdVkddzhl
	oYea5Y/QnkCTU5va7VewrcymVSl7hPqc6ymHYZPtqBpBCCoWj+bDWTZ4Rg35tUwDC/rii7qhbmR
	EGG08OsyGzfY6WRANUqEahdf5liSQJWisXNn4a2Rayyr8dcjUv1cX364qADSYuKZHc6yCYIVP+C
	+wfagmqna+bon19iwtIQM9w7NQDMOlXZ4XB9MHGPUbBZk6IUH4aNl0M0HBYJygKwvsspe46VomR
	CPa8UTQOyea+pmoVbDQwURKV+GO42mFVk2Weq+rB2uVjRXXA9MFjxIIyjBxdDkhgdTzZXlok2yU
	qU
X-Received: by 2002:a05:690c:dd5:b0:794:1466:1b38 with SMTP id 00721157ae682-7945a8488c4mr36442147b3.14.1769452707373;
        Mon, 26 Jan 2026 10:38:27 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7943af13c0bsm52058287b3.4.2026.01.26.10.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 10:38:26 -0800 (PST)
Date: Mon, 26 Jan 2026 12:38:24 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: the origin of mkdir(2) (was: [PATCH v1 00/21] man/man2/*: Update
 history of syscalls H-M)
Message-ID: <20260126183824.kpl2f3bjfre4uufx@illithid>
References: <cover.1769429341.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="h5ec3jbewexx4o7u"
Content-Disposition: inline
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4960-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 777DD8C26A
X-Rspamd-Action: no action


--h5ec3jbewexx4o7u
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: the origin of mkdir(2) (was: [PATCH v1 00/21] man/man2/*: Update
 history of syscalls H-M)
MIME-Version: 1.0

Hi Seth,

At 2026-01-26T12:28:10+0000, Seth McDonald wrote:
> This set updates the history of system calls H to M.
>=20
> While I have been thorough with my research, I would encourage those
> interested to double-check that my edits make sense given the listed
> sources.  Particularly for linkat(2), SEEK_DATA/SEEK_HOLE, mkdirat(2),
> and mincore(2), since they took significantly more time and research
> than other functions.

I thank you for this work!  I could not have told you that mkdir(2)--
the system call--arrived in Unix as late as 4.2BSD.  My first thought
was, "that can't be right".  My second was, "ah, that must be when Unix
got rid of the 14-character limit on file names".

(Traditionally in Unix, a directory was a plain file of 16-byte
entries--a 14-byte `char` field for the file name, which was not
null-terminated if of maximum length, and a 2-byte `int` for the file's
inode number.  This design kept the system call interface narrow.  It
also, if I understand the war stories correctly, could lead to horrible
problems, like users open(2)ing directories belonging to themselves and
trashing them with sloppy code, or introducing cycles into into the
graph of the file system by creating hard links to directories.[1])

And sure enough, history appears to record that the Berkeley FFS ("fast
file system") came in with 4.2BSD as well.

https://www.oreilly.com/openbook/opensources/book/kirkmck.html

Regards,
Branden

[1] This was such an unthinkable and invalid situation that, again AIUI,
    that rather than being flatly prohibited by the kernel, only root
    was allowed to create hard links to directories.

--h5ec3jbewexx4o7u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAml3tJgACgkQ0Z6cfXEm
bc7KRBAAn/JKnx4yGQrIFmiVsDB6VPikFeXw7QYhYJi6d4WMKjcPgZ6uf67p/lq6
H5eWLKlEFNAjgdJ8fnOGlJiNd+CUDH4WG/62alLjFzaBdHp4a0eg0yFA4WjDBtLk
+uV4nZ9yKF3qQPw+kxpWgJrqxY7y7yA2QgSv35hxnhb/jaAoYAVxzqzjZZOUKeGE
MOnXYnO1bduN7Ws0w9kClx+WPI++1AWZiz5jDoyPbNQSZ8UNgHebg843YqP0x/s4
PC7H/pYWC/FUm7MgBET97JSiwB+TM/Wte4BA7+lTgutrG2HrfjBa7HCQAlFWnLyV
o0TPlgTlZjdM5OpDCwhlziWbfs4LCn3hDRWMV19ZzwCvCehLkDXc+2Rnx9MyW2pa
UZpDQcoF6ix/IumnNzY/+sAY1ruzu7yL8Ty9ScUrnlrx0AsqcqYyH9hrFTU0TyiG
zi+H+N/vaiK9vd3xrBT04OfiWxqPc07Pjo6AtqVH6YSPUXwJ7wI0EA51PgyYanc8
Mz8LApfmgg0fTF8wRm+1+QI+PWudXJhYleB6OobRAmWStRkfV7qWiPib2Ds40Wmh
hs/GlS8IrW0Tzz06Qn/V8aphRbTQaUxBIbCptyQ8sG9fx5LmUMzSqQ05l5eyEdcI
7WirS/LR941SSZyMYWAWHx06oy2Ql1lEBGECwO1hyGkejpovsEg=
=WAKK
-----END PGP SIGNATURE-----

--h5ec3jbewexx4o7u--

