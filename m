Return-Path: <linux-man+bounces-5699-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6NJgIAzcTGoZrAEAu9opvQ
	(envelope-from <linux-man+bounces-5699-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 12:59:24 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B548D71AB4B
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 12:59:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=jasonyundt.email header.s=mail header.b="CcT/SC+t";
	dmarc=pass (policy=quarantine) header.from=jasonyundt.email;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5699-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5699-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C304307EDBC
	for <lists+linux-man@lfdr.de>; Tue,  7 Jul 2026 10:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A6B3F4DD6;
	Tue,  7 Jul 2026 10:55:25 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77663EBF20
	for <linux-man@vger.kernel.org>; Tue,  7 Jul 2026 10:55:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783421721; cv=none; b=cL8wAcTO/CZASirOcB8zkhIdVi9zgsSosKPDGU0GlfYXMiBBOvm/jLMdebdD4GxOFJCLb+kHbz6cOdrxDDBcMnSsDiP9N1kba+HQkYPd6aVf23PoIlEs3c1Q0EH5RVC0cGa35Jn63K5z3lQn+1Kqzug5/KMdbMyx41mb18o6LJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783421721; c=relaxed/simple;
	bh=zAabonZa86REmFiDUnyTQIpXHF5L8AQXZ1qHe+hBdzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N6TA3Fa7SC7kpv6btLq/O+IxSi4Z9LEZETSZSrPcj/XseTQLrpTmGNl/EiXeX/YiqYfy5XRtuuLodTjYtVuROvImZYInAEiRUat/mg87NJtgbDxOgt0DWhYI/MqvcfaJ56C05OXMoDvZqUSrVIAijUMJcg88cHYesTZwdRTD/bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=CcT/SC+t; arc=none smtp.client-ip=104.248.224.157
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1783421711;
	bh=zAabonZa86REmFiDUnyTQIpXHF5L8AQXZ1qHe+hBdzQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CcT/SC+t7vjhnsGFFt9i+amjOEOc2aRUmZOUA/c8caxlsfFlV5zmrx6WtHFzqcFpC
	 Au4r6IC/BSnb6dgtlh9gE0NfzQ94/PnZENvxKWmida8PilX8DHttNHmfSAaE2Ngb+c
	 VhCdz9hihRTwdTh7I3mFhyRu1WFe6f501bMORc7OPc7GyO+tbzqv7D98i05Vu757XH
	 RM0Ws83S47EmLnVJuFRuyjKntss/XnxbVV4/KQP/xOFnI056+SQ1mc4YzeT3LDuqbe
	 wOYYSivwBd7AuoDO9GZjGLIfvru1vp9usIW+3dPqEXex2BBbEoQ4updqJTObJ4pcHD
	 3fvxFk2jUoTWg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id A1C4D7E36E;
	Tue,  7 Jul 2026 06:55:11 -0400 (EDT)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH v2] man/man7/environ.7: Fix underspecification of "name=value" strings
Date: Tue,  7 Jul 2026 06:53:26 -0400
Message-ID: <74bea4adebbd24979b9a072d518f1f202a788674.1783421176.git.jason@jasonyundt.email>
In-Reply-To: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[jasonyundt.email,quarantine];
	R_DKIM_ALLOW(-0.20)[jasonyundt.email:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5699-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:jason@jasonyundt.email,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jason@jasonyundt.email,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jason@jasonyundt.email,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[jasonyundt.email:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,codeberg.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B548D71AB4B

Before this change, environ(7) said this:

> By convention, the strings in environ have the form "name=value".  The
> name is case-sensitive and may not contain the character "=".  The
> value can be anything that can be represented as a string.  The name
> and the value may not contain an embedded null byte ('\0'), since this
> is assumed to terminate the string.

That description has a few problems:

1. It talks about ‘the character "="’, but it doesn’t specify what
   character encoding would be used to represent that character.  Two
   different character encodings could represent that same “=” character
   using two different bytes (or even sequences of bytes).

2. It mentions that ‘The name is case-sensitive and may not contain the
   character "=".’  It doesn’t clearly say what what is allowed to be in
   a name.  It only says that those two things are explicitly
   disallowed.

This change fixes those two problems.  For the first problem, this
change makes it so that the description is all about bytes, not
characters.  Describing the format in terms of bytes allows us to
sidestep the question of character encoding entirely.  Additionally, it
is more accurate to describe strings in environ as being sequences of
bytes instead of sequences of characters.  Both the name and value of an
environment variable could be sequences of bytes that don’t contain any
characters at all.

For the second problem, this change clarifies that the name of an
environment variable can contain any byte except for 0x3D.  It also
clarifies that while it’s OK for environment variable values to be
empty, it’s not OK for environment variable names to be empty.

Additionally, this change replaces "=" with '='.  In the C programming
language, "=" refers to two bytes: one for the equals character plus one
for the terminating null byte.  In the C programming language, '='
refers to a single byte.  In this particular instance, we’re talking
about a single byte, so it’s better to use '='.  Using '=' also makes
environ(7) more internally consistent.  Before this change, environ(7)
used '\0' and "=".  This change makes it so that environ(7) uses '\0'
and '='.

I was able to obtain obtain the information that I needed in order to
create this change by writing two test programs:

show-env-var-bytes.c:

	#include <stdio.h>
	#include <stdlib.h>

	void print_string_bytes(char *s) {
		printf("\"");
		for (size_t i = 0; s[i] != '\0'; i++) {
			printf("\\x%02hhX", s[i]);
		}
		printf("\"\n");
	}

	int main(int argc, char *argv[]) {
		if (argc != 2) {
			fprintf(stderr, "USAGE: %s <NAME>\n", argv[0]);
			return EXIT_FAILURE;
		}
		printf("Name: ");
		print_string_bytes(argv[1]);
		char *getenv_result = getenv(argv[1]);
		if (getenv_result == NULL) {
			fprintf(stderr, "Environment variable not found.\n");
			return EXIT_FAILURE;
		}
		printf("Value: ");
		print_string_bytes(getenv_result);
	}

set-env-var-then-show-bytes.c:

	#include <stdbool.h>
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <unistd.h>

	char *every_nonnull_byte(bool exclude_3d_byte);
	char *environ_item(char *name, char *value);

	char *every_nonnull_byte(bool exclude_3d_byte) {
		char           *ret;
		size_t         i = 0, size = 256;
		unsigned char  byte = '\1';

		if (exclude_3d_byte)
			size -= 1;
		ret = malloc(size);
		for (size_t i = 0; i < (size - 1); i++) {
			if (exclude_3d_byte && byte == '\x3D') {
				byte++;
			}
			ret[i] = byte;
			byte++;
		}
		ret[size - 1] = '\0';
		return ret;
	}

	char *environ_item(char *name, char *value) {
		char  *ret = malloc(strlen(name) + 1 + strlen(value) + 1);

		sprintf(ret, "%s\x3D%s", name, value);
		return ret;
	}

	int main(int argc, char *argv[]) {
		char *name = every_nonnull_byte(true);
		char *value = every_nonnull_byte(false);
		char *env[] = { environ_item(name, value), NULL };

		if (argc != 2) {
			fprintf(stderr, "USAGE: %s <PATH>\n", argv[0]);
			return EXIT_FAILURE;
		}

		execle(argv[1], argv[1], name, NULL, env);
		perror("execle() failed");
		free(name);
		free(value);
		free(env[0]);
		return EXIT_FAILURE;
	}

Once those two programs are compiled you can run them by running this
command:

    ./set-env-var-then-show-bytes ./show-env-var-bytes

Additionally, I got the information about the setenv(3) and unsetenv(3)
functions from their man pages (specifically, the parts of their man pages
that talk about EINVAL).

Signed-off-by: Jason Yundt <jason@jasonyundt.email>
---
 man/man7/environ.7 | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/man/man7/environ.7 b/man/man7/environ.7
index 31a69017cf75..89d48991e8b7 100644
--- a/man/man7/environ.7
+++ b/man/man7/environ.7
@@ -28,9 +28,19 @@ .SH DESCRIPTION
 .I environ
 have the form
 .RI \[dq] name\f[B]=\f[]value \[dq].
-The name is case-sensitive and may not contain
-the character
-.RB \[dq] = \[dq].
+The name is case-sensitive
+and may contain any nonnull byte
+other than 0x3D (the
+.BR ascii (7)
+.RB \[aq] = \[aq]
+character).
+The name must be at least one byte long,
+or else programs will not be able to manipulate it using the
+.BR setenv (3)
+or
+.BR unsetenv (3)
+functions.
+Immediately after the name, there must be a 0x3D byte.
 The value can be anything that can be represented as a string.
 The name and the value may not contain an embedded null byte (\[aq]\[rs]0\[aq]),
 since this is assumed to terminate the string.

Range-diff against v1:
1:  d5b0d9b86029 ! 1:  74bea4adebbd man/man7/environ.7: Fix underspecification of "name=value" strings
    @@ Commit message
         and '='.
     
         I was able to obtain obtain the information that I needed in order to
    -    create this change by writing a test program.  You can find the test
    -    program here [1].  Additionally, I got the information about the setenv(3)
    -    and unsetenv(3) functions from their man pages (specifically, the parts
    -    of their man pages that talk about EINVAL).
    +    create this change by writing two test programs:
     
    -    [1]: <https://codeberg.org/JasonYundt/environ-format-example-program>
    +    show-env-var-bytes.c:
    +
    +            #include <stdio.h>
    +            #include <stdlib.h>
    +
    +            void print_string_bytes(char *s) {
    +                    printf("\"");
    +                    for (size_t i = 0; s[i] != '\0'; i++) {
    +                            printf("\\x%02hhX", s[i]);
    +                    }
    +                    printf("\"\n");
    +            }
    +
    +            int main(int argc, char *argv[]) {
    +                    if (argc != 2) {
    +                            fprintf(stderr, "USAGE: %s <NAME>\n", argv[0]);
    +                            return EXIT_FAILURE;
    +                    }
    +                    printf("Name: ");
    +                    print_string_bytes(argv[1]);
    +                    char *getenv_result = getenv(argv[1]);
    +                    if (getenv_result == NULL) {
    +                            fprintf(stderr, "Environment variable not found.\n");
    +                            return EXIT_FAILURE;
    +                    }
    +                    printf("Value: ");
    +                    print_string_bytes(getenv_result);
    +            }
    +
    +    set-env-var-then-show-bytes.c:
    +
    +            #include <stdbool.h>
    +            #include <stdio.h>
    +            #include <stdlib.h>
    +            #include <string.h>
    +            #include <unistd.h>
    +
    +            char *every_nonnull_byte(bool exclude_3d_byte);
    +            char *environ_item(char *name, char *value);
    +
    +            char *every_nonnull_byte(bool exclude_3d_byte) {
    +                    char           *ret;
    +                    size_t         i = 0, size = 256;
    +                    unsigned char  byte = '\1';
    +
    +                    if (exclude_3d_byte)
    +                            size -= 1;
    +                    ret = malloc(size);
    +                    for (size_t i = 0; i < (size - 1); i++) {
    +                            if (exclude_3d_byte && byte == '\x3D') {
    +                                    byte++;
    +                            }
    +                            ret[i] = byte;
    +                            byte++;
    +                    }
    +                    ret[size - 1] = '\0';
    +                    return ret;
    +            }
    +
    +            char *environ_item(char *name, char *value) {
    +                    char  *ret = malloc(strlen(name) + 1 + strlen(value) + 1);
    +
    +                    sprintf(ret, "%s\x3D%s", name, value);
    +                    return ret;
    +            }
    +
    +            int main(int argc, char *argv[]) {
    +                    char *name = every_nonnull_byte(true);
    +                    char *value = every_nonnull_byte(false);
    +                    char *env[] = { environ_item(name, value), NULL };
    +
    +                    if (argc != 2) {
    +                            fprintf(stderr, "USAGE: %s <PATH>\n", argv[0]);
    +                            return EXIT_FAILURE;
    +                    }
    +
    +                    execle(argv[1], argv[1], name, NULL, env);
    +                    perror("execle() failed");
    +                    free(name);
    +                    free(value);
    +                    free(env[0]);
    +                    return EXIT_FAILURE;
    +            }
    +
    +    Once those two programs are compiled you can run them by running this
    +    command:
    +
    +        ./set-env-var-then-show-bytes ./show-env-var-bytes
    +
    +    Additionally, I got the information about the setenv(3) and unsetenv(3)
    +    functions from their man pages (specifically, the parts of their man pages
    +    that talk about EINVAL).
     
         Signed-off-by: Jason Yundt <jason@jasonyundt.email>
     
    @@ man/man7/environ.7: .SH DESCRIPTION
     -The name is case-sensitive and may not contain
     -the character
     -.RB \[dq] = \[dq].
    --The value can be anything that can be represented as a string.
    --The name and the value may not contain an embedded null byte (\[aq]\[rs]0\[aq]),
    --since this is assumed to terminate the string.
     +The name is case-sensitive
    -+and may contain any byte
    -+other than null (\[aq]\[rs]0\[aq]) and 0x3D (the
    ++and may contain any nonnull byte
    ++other than 0x3D (the
     +.BR ascii (7)
     +.RB \[aq] = \[aq]
     +character).
    @@ man/man7/environ.7: .SH DESCRIPTION
     +or
     +.BR unsetenv (3)
     +functions.
    -+Immediately after the name, there should be a 0x3D byte.
    -+Immediately after the 0x3D byte is the value.
    -+The value may contain any byte except for null.
    -+The value may be zero bytes long.
    -+Immediately after the value, there must be a terminating null byte.
    - .P
    - Environment variables may be placed in the shell's environment by the
    - .I export
    ++Immediately after the name, there must be a 0x3D byte.
    + The value can be anything that can be represented as a string.
    + The name and the value may not contain an embedded null byte (\[aq]\[rs]0\[aq]),
    + since this is assumed to terminate the string.
-- 
2.54.0


