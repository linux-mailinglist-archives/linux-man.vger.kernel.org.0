Return-Path: <linux-man+bounces-2703-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F15EA76385
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 11:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C4237A4910
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 09:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D101DE4E7;
	Mon, 31 Mar 2025 09:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YqQKrz93"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2FA15530C
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 09:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743414409; cv=none; b=Krxtlz2cg5FCuWURyvhRDK3XG5+pxtycYj1mGeyz7cEtUArUIZs/R50AYnqD2iioujLHgfpjfTFqiRhqSt0dEFM0FV37ZMuqtiFh3ZjMHX6CndklWA2is/vzHgcwDW9xhUl9haQnt93Zk6uXdYxPCqgyzvMlNhtJOs27vG/J2YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743414409; c=relaxed/simple;
	bh=ijo3q8A3xOiwqUQNsVlqMAyBafqgFzzX+AEp07Y2n9I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=axWQFDYWlNPE3bUlMufqvaiqc+3HfvJmEOnYXf94h/N4IGvXA3hZ55osWMJCUq8DBKRVRbwQog67aG5MAWnuaEZcecF2dXCMi2/dLRQG/4G21G+dtvGKuIl5myZy7TdPVYaHj2eucqlZtIFc/szeOt8TKR/Le5s2U7bFzszX3Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YqQKrz93; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso7846007a12.3
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 02:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743414405; x=1744019205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UvDlGCkhtlyrGPRuSOcMqzAZUObc8mWiVhzhQQOWZ4=;
        b=YqQKrz93l9Txkg9Ew0qqPnHNCrL2l9MbrdBcI85U1KMGMbosSTcTVvnqP0ggwZDMJC
         m1WQsls5oBTsvNLWNcA/A5rvY/CotbChs7kekgVVbp+YZUx8/C1cYclb6b7K8IfvF/dy
         wQxfciiJ/MfoIw9RY6xzg7JFt4hXRyEmaIpnKGHZwybpjQRqKb0LHllNNT9SuwGpX3VJ
         HW6brFGCxMXjYsuUMDjJYPF6Qjau7PvZVCBN8iR21DucInYr4++Ret+NhJPXVq17qBaz
         yiUGchLRGJtnIBnL8LJow2psxkH8HJ+fDDA11VZwnk1I7ZqHLTqHgYZyoOY5gYzVDx/u
         7Mjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743414405; x=1744019205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UvDlGCkhtlyrGPRuSOcMqzAZUObc8mWiVhzhQQOWZ4=;
        b=XizrtBEc5z//7goKMMuSG0Z6VaAcjc/R0fndLn8TUM6HXXf1eJZtaq2bwl/iHs+oXy
         P3wFRUW6+obmQHxyBYo5ZOrjywiXXJr13rDWjFmpm+T3Po4N58gfqaHyxXVi47VCUTzm
         wNA+iaBf8y721fGZjuUcK5oSibnlmhqQ+4mfrZRJtcvibnf37lbqecb+WJfjcxYFlxYa
         cfwoR5ucsUG0XMZiU+jr/2Su4zp+Ecpgr292iblAxU9zOnCyjvWbE5pGC9DGSiP9zvlP
         bupWAYtoy9wjrxAFjqe9xQ8vjiitAkPchrNV3Rk4/e3yC45oFJec7WCxyuEl1a/EF67T
         24iw==
X-Forwarded-Encrypted: i=1; AJvYcCVfR/fZvPQezaMJzQH2tyGTfR1skdoc88iSbiJCM+uQeuNoZgT8cww//0HSVrlc47jFjHyjvZOUhc4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyRGqQHyMLXo9f6QpUM53WFh731FlkFVxs+jpGVSp0eUxJaj7FD
	iRCMcNqkDZd9Gmtpow/tP105YyUPyglgNIFebdZIhOfswO3SLYU/xvp2cnvJsq57+j3XbX2eCDw
	vyxxoktWyJLYiMyL5Mk+w8R6PIelZxkCXm6k=
X-Gm-Gg: ASbGncs/9GkyvTzdcTMUPzzYcmMNKanyFRzt0Ezu+pFKMsAgUUvSWf/MGLY3v5ZJTR7
	fj51N6LBbUX9OhaNs9Da3SqYbAyWM6BWbJgDDVNSTKpL7dznetBbqMoQEnG7oM5JdUoMTP2BHuO
	YTk2ycWD4ahFajK58Uredk7z5hMQ==
X-Google-Smtp-Source: AGHT+IE3MeWDWcKAu+Q8mdTybrskmU+8CEZ1A3U0mdGkwcJ35FySxdxiUVRoGxcQ9kUvbSHD+Nc43Ro1dIEdbm0KbM8=
X-Received: by 2002:a17:907:9693:b0:ac3:3cfc:a59c with SMTP id
 a640c23a62f3a-ac73898d4c5mr775602966b.11.1743414405289; Mon, 31 Mar 2025
 02:46:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250331082759.1424401-1-amir73il@gmail.com> <20250331082759.1424401-2-amir73il@gmail.com>
 <ecb3r3iw7c6efbl5dagb7jy7sailmdpmil3qg76lm7s3ub3qua@e55vmngsboyq>
In-Reply-To: <ecb3r3iw7c6efbl5dagb7jy7sailmdpmil3qg76lm7s3ub3qua@e55vmngsboyq>
From: Amir Goldstein <amir73il@gmail.com>
Date: Mon, 31 Mar 2025 11:46:33 +0200
X-Gm-Features: AQ5f1JrkUvUvkbku59ZEhOUyH_PxVAypu5y_ZRFDVsZmoxvMJnQda6WTVeGwjNU
Message-ID: <CAOQ4uxgPdWXqaLN9PmgnWaPHDsisZJTLpV-GYmtY_mgPKyMYcQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] fanotify.7: Document FAN_RESPONSE_INFO_AUDIT_RULE
To: Alejandro Colomar <alx@kernel.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 31, 2025 at 11:01=E2=80=AFAM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Amir,
>
> On Mon, Mar 31, 2025 at 10:27:58AM +0200, Amir Goldstein wrote:
> > Document FAN_RESPONSE_INFO_AUDIT_RULE extended response info record
> > that was added in v6.3.
> >
> > Cc: Jan Kara <jack@suse.cz>
> > Cc: Richard Guy Briggs <rgb@redhat.com>
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> > ---
> >  man/man7/fanotify.7 | 43 +++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >
> > diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> > index ad864b762..863578bd7 100644
> > --- a/man/man7/fanotify.7
> > +++ b/man/man7/fanotify.7
> > @@ -787,6 +787,49 @@ flag can be set in the
> >  field.
> >  In that case, the audit subsystem will log information about the acces=
s
> >  decision to the audit logs.
> > +.P
> > +Since Linux 6.3,
> > +.\" commit 70529a199574c15a40f46b14256633b02ba10ca2
> > +the
> > +.B FAN_INFO
> > +flag can be set in the
> > +.I .response
> > +field.
> > +It indicates that an extra variable-length response record follows the
> > +.I fanotify_response
> > +structure.
> > +Extra response records start with a common header:
> > +.P
> > +.in +4n
> > +.EX
> > +struct fanotify_response_info_header {
> > +    __u8 type;
> > +    __u8 pad;
> > +    __u16 len;
> > +};
> > +.EE
> > +.in
> > +.P
> > +The value of
> > +.I .type
> > +determines the format of the extra response record.
> > +In case the value of
> > +.I .type
> > +is
> > +.BR FAN_RESPONSE_INFO_AUDIT_RULE ,
>
> How about making this more schematic?  I'm thinking of the following
> (see diff for both the source code and the rendered page).
>
>
> Cheers,
> Alex
>
> $ git diff
> diff --git i/man/man7/fanotify.7 w/man/man7/fanotify.7
> index 863578bd7..4b1e2c215 100644
> --- i/man/man7/fanotify.7
> +++ w/man/man7/fanotify.7
> @@ -813,13 +813,11 @@ .SS Dealing with permission events
>  The value of
>  .I .type
>  determines the format of the extra response record.
> -In case the value of
> -.I .type
> -is
> -.BR FAN_RESPONSE_INFO_AUDIT_RULE ,
> -the following response record is expected
> +.TP
> +.BR FAN_RESPONSE_INFO_AUDIT_RULE
> +The following response record is expected
>  with extra details for the audit log:
> -.P
> +.IP
>  .in +4n
>  .EX
>  struct fanotify_response_info_audit_rule {
> $ MANWIDTH=3D72 diffman-git
> --- HEAD:man/man7/fanotify.7
> +++ ./man/man7/fanotify.7
> @@ -539,16 +539,18 @@
>           };
>
>       The value of .type determines the format  of  the  extra  response
> -     record.   In  case  the  value  of  .type is FAN_RESPONSE_INFO_AU=
=E2=80=90
> -     DIT_RULE, the following response record is expected with extra de=
=E2=80=90
> -     tails for the audit log:
> +     record.
>
> -         struct fanotify_response_info_audit_rule {
> -             struct fanotify_response_info_header hdr;
> -             __u32 rule_number;
> -             __u32 subj_trust;
> -             __u32 obj_trust;
> -         };
> +     FAN_RESPONSE_INFO_AUDIT_RULE
> +            The  following  response  record is expected with extra de=
=E2=80=90
> +            tails for the audit log:
> +
> +                struct fanotify_response_info_audit_rule {
> +                    struct fanotify_response_info_header hdr;
> +                    __u32 rule_number;
> +                    __u32 subj_trust;
> +                    __u32 obj_trust;
> +                };
>
>     Monitoring filesystems for errors
>       A single FAN_FS_ERROR event is stored per filesystem at once.  Ex=
=E2=80=90
>

I think this is nicer.
Feel free to apply your version.

While at it, you may want to consider a similar reformatting
to the section describing the extra information records in events
starting with:

"Information  records  are supplemental pieces of information..."

and then with:

"Information records that are supplied alongside..."

I know making an order in this would be too much for me...

Thanks,
Amir.

